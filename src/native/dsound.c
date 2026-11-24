/* DirectSound for the portable build: a small software mixer.  The game creates secondary buffers (sound effects, the
 * music stream) with Lock / Unlock / Play, and polls GetCurrentPosition to refill looping buffers.  Buffers are guest memory;
 * the back end's audio callback mixes every playing buffer into the device format. */
#include "w32.h"
#include "host.h"
#include "back.h"
#include "sys.h"
#include <math.h>

#define DS_OK 0
#define DSERR_UNSUPPORTED 0x80004001u
#define NBUF 64

typedef struct {
    int used, primary;
    uint32_t addr, size;                 /* the buffer's memory (guest) */
    int channels, bits, rate, align;
    uint32_t pos;                        /* play cursor in bytes */
    uint64_t frac;                       /* fractional source frames (16.16) */
    int playing, looping;
    int vol;                             /* hundredths of a dB, 0 = full */
    int pan;                             /* hundredths of a dB, -10000 left .. 10000 right */
    int freq;                            /* 0 = the buffer's own rate */
    uint32_t obj;                        /* guest COM object */
} dsb_t;
static dsb_t bufs[NBUF];
static int dev_rate;
static uint32_t ds_obj, buf_vt;

static dsb_t *buf_of(uint32_t o) { int i; for (i = 0; i < NBUF; i++) if (bufs[i].used && bufs[i].obj == o) return &bufs[i]; return 0; }

/* ---------------------------------------------------------------- the mixer (audio thread) */
static float gain_of(int hundredth_db) { return hundredth_db <= -10000 ? 0.0f : powf(10.0f, (float)hundredth_db / 2000.0f); }
static void mix(int16_t *out, int frames) {
    int i, f;
    float *acc = (float *)calloc((size_t)frames * 2, sizeof(float));
    if (!acc) { memset(out, 0, (size_t)frames * 4); return; }
    for (i = 0; i < NBUF; i++) {
        dsb_t *b = &bufs[i];
        float gl, gr, g; uint64_t step;
        if (!b->used || b->primary || !b->playing || !b->size) continue;
        g = gain_of(b->vol);
        gl = g * (b->pan > 0 ? gain_of(-b->pan) : 1.0f); gr = g * (b->pan < 0 ? gain_of(b->pan) : 1.0f);
        step = ((uint64_t)(b->freq ? b->freq : b->rate) << 16) / (uint64_t)dev_rate;
        for (f = 0; f < frames; f++) {
            const uint8_t *p = (const uint8_t *)(uintptr_t)(b->addr + b->pos);
            float l, r;
            if (b->bits == 16) { int16_t s0 = (int16_t)(p[0] | (p[1] << 8)); l = s0; r = b->channels == 2 ? (int16_t)(p[2] | (p[3] << 8)) : s0; }
            else { l = (float)(p[0] - 128) * 256.0f; r = b->channels == 2 ? (float)(p[1] - 128) * 256.0f : l; }
            acc[f * 2] += l * gl; acc[f * 2 + 1] += r * gr;
            b->frac += step;
            while (b->frac >= 0x10000) {
                b->frac -= 0x10000; b->pos += (uint32_t)b->align;
                if (b->pos >= b->size) {
                    if (b->looping) b->pos = 0; else { b->pos = 0; b->playing = 0; break; }
                }
            }
            if (!b->playing) break;
        }
    }
    for (f = 0; f < frames * 2; f++) { float v = acc[f]; out[f] = (int16_t)(v > 32767 ? 32767 : v < -32768 ? -32768 : v); }
    free(acc);
}

/* ---------------------------------------------------------------- IUnknown */
static uint32_t u_qi(uint32_t o, uint32_t iid, uint32_t *out) { (void)iid; *out = o; return DS_OK; }
static uint32_t u_addref(uint32_t o) { (void)o; return 1; }
static uint32_t stub(uint32_t o) { (void)o; host_log("dsound: unsupported method"); return DSERR_UNSUPPORTED; }
static uint32_t ok1(uint32_t o) { (void)o; return DS_OK; }
static uint32_t ok2(uint32_t o, uint32_t a) { (void)o; (void)a; return DS_OK; }

/* ---------------------------------------------------------------- IDirectSoundBuffer */
static uint32_t b_release(uint32_t o) {
    dsb_t *b = buf_of(o);
    if (b) { back_audio_lock(1); b->playing = 0; b->used = 0; back_audio_lock(0); gfree(b->addr); gfree(b->obj); }
    return 0;
}
static uint32_t b_GetCurrentPosition(uint32_t o, uint32_t *play, uint32_t *write) {
    dsb_t *b = buf_of(o);
    if (!b) return DSERR_UNSUPPORTED;
    if (play) *play = b->pos;
    if (write) *write = (b->pos + (uint32_t)(b->rate / 20) * (uint32_t)b->align) % (b->size ? b->size : 1);
    return DS_OK;
}
static uint32_t b_GetStatus(uint32_t o, uint32_t *st) { dsb_t *b = buf_of(o); *st = b ? (b->playing ? 1u | (b->looping ? 4u : 0) : 0) : 0; return DS_OK; }
static uint32_t b_Lock(uint32_t o, uint32_t off, uint32_t bytes, uint32_t *p1, uint32_t *n1, uint32_t *p2, uint32_t *n2, uint32_t flags) {
    dsb_t *b = buf_of(o);
    if (!b) return DSERR_UNSUPPORTED;
    if (flags & 2) bytes = b->size;                         /* DSBLOCK_ENTIREBUFFER */
    if (flags & 1) off = b->pos;                            /* DSBLOCK_FROMWRITECURSOR */
    if (off >= b->size) off = 0;
    if (bytes > b->size) bytes = b->size;
    if (off + bytes <= b->size) { *p1 = b->addr + off; *n1 = bytes; if (p2) *p2 = 0; if (n2) *n2 = 0; }
    else { *p1 = b->addr + off; *n1 = b->size - off; if (p2) *p2 = b->addr; if (n2) *n2 = bytes - *n1; }
    return DS_OK;
}
static uint32_t b_Play(uint32_t o, uint32_t res, uint32_t prio, uint32_t flags) {
    dsb_t *b = buf_of(o); (void)res; (void)prio;
    if (!b) return DSERR_UNSUPPORTED;
    back_audio_lock(1); b->playing = 1; b->looping = (flags & 1) != 0; back_audio_lock(0);
    return DS_OK;
}
static uint32_t b_Stop(uint32_t o) { dsb_t *b = buf_of(o); if (b) { back_audio_lock(1); b->playing = 0; back_audio_lock(0); } return DS_OK; }
static uint32_t b_SetCurrentPosition(uint32_t o, uint32_t pos) { dsb_t *b = buf_of(o); if (b) { back_audio_lock(1); b->pos = pos < b->size ? pos - pos % (uint32_t)b->align : 0; b->frac = 0; back_audio_lock(0); } return DS_OK; }
static uint32_t b_SetVolume(uint32_t o, int32_t v) { dsb_t *b = buf_of(o); if (b) b->vol = v; return DS_OK; }
static uint32_t b_SetPan(uint32_t o, int32_t v) { dsb_t *b = buf_of(o); if (b) b->pan = v; return DS_OK; }
static uint32_t b_SetFrequency(uint32_t o, uint32_t v) { dsb_t *b = buf_of(o); if (b) b->freq = v == 0 ? 0 : (int)v; return DS_OK; }
static uint32_t b_GetVolume(uint32_t o, int32_t *v) { dsb_t *b = buf_of(o); *v = b ? b->vol : 0; return DS_OK; }
static uint32_t b_GetFormat(uint32_t o, uint8_t *wf, uint32_t cb, uint32_t *wrote) {
    dsb_t *b = buf_of(o);
    if (b && cb >= 16) { uint16_t tag = 1, ch = (uint16_t)b->channels, bits = (uint16_t)b->bits, al = (uint16_t)b->align; uint32_t r = (uint32_t)b->rate, avg = r * (uint32_t)b->align;
        memcpy(wf, &tag, 2); memcpy(wf + 2, &ch, 2); memcpy(wf + 4, &r, 4); memcpy(wf + 8, &avg, 4); memcpy(wf + 12, &al, 2); memcpy(wf + 14, &bits, 2); if (cb >= 18) memset(wf + 16, 0, 2); }
    if (wrote) *wrote = 18;
    return DS_OK;
}
static uint32_t b_Unlock(uint32_t o, uint32_t p1, uint32_t n1, uint32_t p2, uint32_t n2) { (void)o; (void)p1; (void)n1; (void)p2; (void)n2; return DS_OK; }
static uint32_t b_Restore(uint32_t o) { (void)o; return DS_OK; }

static uint32_t make_buffer(int primary, uint32_t size, const uint8_t *wf) {
    int i; dsb_t *b = 0;
    for (i = 0; i < NBUF; i++) if (!bufs[i].used) { b = &bufs[i]; break; }
    if (!b) return 0;
    memset(b, 0, sizeof *b);
    b->primary = primary;
    b->channels = 2; b->bits = 16; b->rate = 22050;
    if (wf) { b->channels = wf[2] | (wf[3] << 8); b->rate = (int)(wf[4] | (wf[5] << 8) | (wf[6] << 16) | ((uint32_t)wf[7] << 24)); b->bits = wf[14] | (wf[15] << 8); }
    if (b->channels < 1) b->channels = 1; if (b->bits != 8 && b->bits != 16) b->bits = 16; if (b->rate < 1000) b->rate = 22050;
    b->align = b->channels * b->bits / 8;
    b->size = size - size % (uint32_t)b->align;
    b->addr = primary ? 0 : gmalloc(size ? size : 4);
    if (!primary && b->bits == 8) memset((void *)(uintptr_t)b->addr, 128, size);
    b->obj = gmalloc(8); wr32(b->obj, buf_vt);
    b->used = 1;
    return b->obj;
}
static uint32_t ds_CreateSoundBuffer(uint32_t o, const uint32_t *desc, uint32_t *out, uint32_t outer) {
    uint32_t obj; (void)o; (void)outer;
    obj = make_buffer((desc[1] & 1) != 0, desc[2], desc[4] ? (const uint8_t *)(uintptr_t)desc[4] : 0);
    if (!obj) return DSERR_UNSUPPORTED;
    *out = obj;
    return DS_OK;
}
static uint32_t ds_DuplicateSoundBuffer(uint32_t o, uint32_t src, uint32_t *out) {
    dsb_t *s = buf_of(src), *d; uint32_t obj; (void)o;
    if (!s) return DSERR_UNSUPPORTED;
    obj = make_buffer(0, s->size, 0);
    if (!obj) return DSERR_UNSUPPORTED;
    d = buf_of(obj);
    d->channels = s->channels; d->bits = s->bits; d->rate = s->rate; d->align = s->align;
    memcpy((void *)(uintptr_t)d->addr, (void *)(uintptr_t)s->addr, s->size);
    *out = obj;
    return DS_OK;
}
static uint32_t ds_GetCaps(uint32_t o, uint32_t *caps) { (void)o; memset(caps + 1, 0, caps[0] - 4); caps[1] = 0x1 | 0x2; caps[3] = 8000; caps[4] = 48000; return DS_OK; }

static uint32_t build(int n, void **fn, int *ac) {
    uint32_t vt = gmalloc((uint32_t)n * 4), o = gmalloc(8); int i;
    for (i = 0; i < n; i++) wr32(vt + 4 * (uint32_t)i, host_magic(ac[i], fn[i]));
    wr32(o, vt);
    return o;
}
#define SET(i, f, a) do { fn[i] = (void *)(f); ac[i] = (a); } while (0)
static uint32_t w_DirectSoundCreate(const void *guid, uint32_t *out, void *outer) {
    (void)guid; (void)outer;
    if (!ds_obj) {
        void *fn[21]; int ac[21], i;
        for (i = 0; i < 21; i++) { fn[i] = (void *)stub; ac[i] = 1; }
        SET(0, u_qi, 3); SET(1, u_addref, 1); SET(2, u_addref, 1);
        SET(3, b_GetCurrentPosition, 3); /* placeholder overwritten below */
        SET(4, b_GetStatus, 2);          /* ditto */
        for (i = 3; i < 21; i++) { fn[i] = (void *)stub; ac[i] = 1; }
        SET(0, u_qi, 3); SET(1, u_addref, 1); SET(2, u_addref, 1);
        SET(3, ds_CreateSoundBuffer, 4); SET(4, ds_GetCaps, 2); SET(5, ds_DuplicateSoundBuffer, 3); SET(6, ok2, 3); SET(7, ok1, 1);
        ds_obj = build(11, fn, ac);
        for (i = 0; i < 21; i++) { fn[i] = (void *)stub; ac[i] = 1; }
        SET(0, u_qi, 3); SET(1, u_addref, 1); SET(2, b_release, 1);
        SET(4, b_GetCurrentPosition, 3); SET(5, b_GetFormat, 4); SET(6, b_GetVolume, 2); SET(9, b_GetStatus, 2);
        SET(11, b_Lock, 8); SET(12, b_Play, 4); SET(13, b_SetCurrentPosition, 2); SET(14, ok2, 2); SET(15, b_SetVolume, 2); SET(16, b_SetPan, 2);
        SET(17, b_SetFrequency, 2); SET(18, b_Stop, 1); SET(19, b_Unlock, 5); SET(20, b_Restore, 1);
        {   uint32_t o = build(21, fn, ac); buf_vt = rd32(o); }
        dev_rate = back_audio_open(44100, mix);
        if (!dev_rate) dev_rate = 44100;
    }
    *out = ds_obj;
    return DS_OK;
}
void dsound_init(void) { w32_reg("DirectSoundCreate", 3, (void *)w_DirectSoundCreate); }
