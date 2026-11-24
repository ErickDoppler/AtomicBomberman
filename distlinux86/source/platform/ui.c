/* The TCP lobby screens, drawn with the game's own interface.
 *
 * They are built exactly like the game's Options screen: random menu background, outlined font,
 * animated bomb cursor, Esc hint, the game's key queue (Up / Down / Enter / Esc) and its modal
 * text prompt for typing.  The drawing and input routines are the original ones, reached through
 * the thunks in src/asm/hooks.s.
 *
 *   server lobby ("Start Network Game")    TCP Port at the top; Enter on it asks for a new port: the
 *        port is checked, the old server closed and a new one started on it (the last port that
 *        worked is remembered).  The players that have connected are listed; as soon as there is one,
 *        Start Game is available - to the host and to every client.
 *   join screen ("Join Network Game")      server address, TCP port, Join; connection status;
 *        the players once connected; Start Game as soon as another player is in; the last server
 *        that worked is remembered.
 */
#include "bm.h"

extern void bm_g_enter(void) __asm__("_bm_g_enter");
extern void bm_g_leave(void) __asm__("_bm_g_leave");
extern void bm_g_begin(void) __asm__("_bm_g_begin");
extern void bm_g_text(const char *text, int x, int y) __asm__("_bm_g_text");
extern void bm_g_cursor(int x, int y) __asm__("_bm_g_cursor");
extern void bm_g_hint(void) __asm__("_bm_g_hint");
extern void bm_g_present(void) __asm__("_bm_g_present");
extern int  bm_g_key(void) __asm__("_bm_g_key");
extern int  bm_g_value(int id) __asm__("_bm_g_value");
extern int  bm_g_prompt(char *buf, int maxlen, const char *title) __asm__("_bm_g_prompt");

enum { K_UP = 0x148, K_DOWN = 0x150, K_ENTER = 0x0d, K_SPACE = 0x20, K_ESC = 0x1b };
#define ROW_START 14          /* the two buttons sit at the bottom of the screen */
#define ROW_BACK  15
#define MAXSHOW   10          /* players listed: the host and nine clients */
#define COLROWS   5           /* rows of the first column of the player list */
#define COLSHIFT  250         /* the second column starts this far to the right */
#define COLWIDTH  20          /* characters of a name shown in the second column */

static int X, Y0, LH;
static void layout(void) { X = bm_g_value(0x2e9); Y0 = bm_g_value(0x2ea); LH = bm_g_value(0x2eb); }
static void row(int r, const char *t) { if (t[0]) bm_g_text(t, X, Y0 + r * LH); }
static void bomb(int r) { bm_g_cursor(X - 0x14, Y0 + 0x10 + r * LH); }

static void cat_num(char *s, int v) { bm_utoa(s + bm_strlen(s), (unsigned)v); }
static int parse_port(const char *t) {
    int p = 0, i;
    if (!t[0]) return 0;
    for (i = 0; t[i]; i++) { if (t[i] < '0' || t[i] > '9') return 0; p = p * 10 + (t[i] - '0'); if (p > 65535) return 0; }
    return p >= 1 ? p : 0;
}

static void (__stdcall *pSleep)(DWORD);
static DWORD (__stdcall *pTick)(void);
static DWORD ticks(void) { if (!pTick) pTick = bm_api("kernel32.dll", "GetTickCount"); return pTick(); }
#define LOBBY_TIMEOUT_MS (5 * 60 * 1000)   /* the server lobby closes after five minutes */
static void nap(void) { if (!pSleep) pSleep = bm_api("kernel32.dll", "Sleep"); pSleep(12); }

/* ---- inline editing ------------------------------------------------------------------------------------------
   A field is edited where it stands: while its row is selected a text cursor blinks behind the text (that is what tells
   the player the field can be typed into), characters are appended, Backspace removes the last one. */
static const char *caret(int on_field) { return on_field && ((ticks() / 500) & 1) == 0 ? "_" : (on_field ? " " : ""); }

/* applies one key to a text field; digits_only for a port.  Returns 1 when the text changed. */
static int edit_field(char *text, int maxlen, int digits_only, int key) {
    int n = bm_strlen(text);
    if (key == 0x08 || key == 0x7f || key == 0x153) { if (n > 0) { text[n - 1] = 0; return 1; } return 0; }
    if (key < 0x21 || key > 0x7e || n >= maxlen) return 0;
    if (digits_only && (key < '0' || key > '9')) return 0;
    text[n] = (char)key; text[n + 1] = 0;
    return 1;
}

static void draw_players(int first_row) {
    char names[10][NAMELEN];
    int i, n = bm_net_peers(names, 10);
    for (i = 0; i < n && i < MAXSHOW; i++) {
        char line[NAMELEN + 20];
        bm_strcpy(line, "   "); bm_strcat(line, names[i]);
        if (i == 0) bm_strcat(line, "  (host)");
        if (i < COLROWS) row(first_row + i, line);                       /* ten players do not fit under each other: two columns */
        else { line[COLWIDTH] = 0; bm_g_text(line, X + COLSHIFT, Y0 + (first_row + i - COLROWS) * LH); }
    }
}

/* ---------------------------------------------------------------- server lobby */
int bm_lobby_server(void) {
    char addrs[160], portbuf[8], status[120], line[200];
    char names[10][NAMELEN];
    int sel = 0, port = bm_cfg.port, listening, result = 0, n, done = 0;
    bm_utoa(portbuf, (unsigned)bm_cfg.port);
    DWORD t0;
    layout();
    bm_log("ui: server lobby: enter");
    bm_g_enter();
    bm_log("ui: server lobby: entered");
    bm_local_addresses(addrs, sizeof addrs);
    t0 = ticks();
    listening = (bm_net_host_listen(port) == 0);
    if (listening) bm_strcpy(status, "Waiting for players...");
    else { bm_strcpy(status, "TCP port "); cat_num(status, port); bm_strcat(status, " is in use - choose another"); }

    while (!done) {
        int key;
        n = bm_net_peers(names, 10);
        bm_g_begin();
        bm_strcpy(line, "TCP Port: "); bm_strcat(line, portbuf); bm_strcat(line, caret(sel == 0));
        row(0, line);
        row(1, sel == 0 ? "Type the port, Enter applies it" : status);
        bm_strcpy(line, "Others connect to: "); bm_strcat(line, addrs);
        row(2, line);
        { DWORD left = (LOBBY_TIMEOUT_MS - (ticks() - t0)) / 1000;
          bm_strcpy(line, "The lobby closes in "); cat_num(line, (int)(left / 60)); bm_strcat(line, ":"); if (left % 60 < 10) bm_strcat(line, "0"); cat_num(line, (int)(left % 60));
          row(3, line); }
        row(4, "Players in the lobby:");
        draw_players(5);
        row(ROW_START, n >= 2 ? "Start Game" : "Start Game  (waiting for a player)");
        row(ROW_BACK, "Back");
        bomb(sel == 0 ? 0 : sel == 1 ? ROW_START : ROW_BACK);
        bm_g_hint();
        bm_g_present();
        nap();

        if (ticks() - t0 >= LOBBY_TIMEOUT_MS) { done = 1; break; }              /* nobody came in five minutes */
        if (bm_net_start_requested() && n >= 2) { bm_net_send_start(); result = 1; break; }
        key = bm_g_key();
        if (key == -1 || key == -2) continue;
        switch (key) {
        case K_UP:   sel = (sel + 2) % 3; break;
        case K_DOWN: sel = (sel + 1) % 3; break;
        case K_ESC:  done = 1; break;
        case K_ENTER: case K_SPACE:
            if (sel == 2) { done = 1; break; }
            if (sel == 1) { if (n >= 2) { bm_net_send_start(); result = 1; done = 1; } break; }
            if (key == K_SPACE) break;                                           /* the port field: a space is not a digit */
            {   int p = parse_port(portbuf);                                     /* Enter in the port field: apply it */
                if (!p) { bm_strcpy(status, "That is not a valid TCP port (1 - 65535)"); }
                else if (listening && p == port) { bm_strcpy(status, "Already listening on that port"); sel = 1; }
                else if (bm_net_host_listen(p) == 0) {
                    port = p; listening = 1; bm_cfg.port = p; bm_save_ini();     /* the last port that worked */
                    bm_strcpy(status, "Waiting for players..."); sel = 1;
                } else {
                    bm_strcpy(status, "TCP port "); cat_num(status, p);
                    bm_strcat(status, listening ? " is in use - still on the old port" : " is in use - choose another");
                }
            }
            break;
        default:
            if (sel == 0) edit_field(portbuf, 5, 1, key);
            break;
        }
    }
    bm_g_leave();
    return result;
}

/* ---------------------------------------------------------------- join screen */
int bm_lobby_client(void) {
    char status[160], line[200], portbuf[8];
    char names[10][NAMELEN];
    int sel = 0, result = 0, done = 0, shown_state = -1, last_state = 0, n;
    bm_utoa(portbuf, (unsigned)bm_cfg.jport);
    static const int rows[5] = { 0, 1, 2, ROW_START, ROW_BACK };
    layout();
    bm_g_enter();
    bm_strcpy(status, "Not connected");
    if (bm_net_conn_state() == 3) last_state = 2;                    /* back here after the fuse: the server was lost */

    while (!done) {
        int key, st = bm_net_conn_state();
        if (st != shown_state) {                                  /* connection state changed */
            shown_state = st;
            if (st == 1) { bm_strcpy(status, "Connecting to "); bm_strcat(status, bm_cfg.address); bm_strcat(status, ":"); cat_num(status, bm_cfg.jport); bm_strcat(status, " ..."); }
            else if (st == 2) {
                bm_strcpy(status, "Connected - waiting for the game to start");
                bm_save_ini();                                    /* the last server that worked */
                sel = 3;                                          /* the lobby: the cursor goes to "Start Game" */
            } else if (st == 3) {
                if (last_state == 2) bm_strcpy(status, "Connection lost");
                else { bm_strcpy(status, "Could not connect to "); bm_strcat(status, bm_cfg.address); bm_strcat(status, ":"); cat_num(status, bm_cfg.jport); }
            } else bm_strcpy(status, "Not connected");
            last_state = st;
        }
        n = bm_net_peers(names, 10);
        if (st != 2) n = 0;

        bm_g_begin();
        if (st == 2) {                                            /* connected: the same lobby the server sees */
            bm_strcpy(line, "Connected to "); bm_strcat(line, bm_cfg.address); bm_strcat(line, ":"); cat_num(line, bm_cfg.jport);
            row(0, line);
            row(1, status);
            row(4, "Players in the lobby:");
            draw_players(5);
        } else {
            bm_strcpy(line, "Server: "); bm_strcat(line, bm_cfg.address); bm_strcat(line, caret(sel == 0));
            row(0, line);
            bm_strcpy(line, "TCP Port: "); bm_strcat(line, portbuf); bm_strcat(line, caret(sel == 1));
            row(1, line);
            row(2, st == 1 ? "Join  (connecting...)" : "Join");
            row(3, sel == 0 ? "Type the server address or name, Enter = next" : sel == 1 ? "Type the TCP port, Enter = next" : status);
        }
        row(ROW_START, st == 2 && n >= 2 ? "Start Game" : "Start Game  (needs a connection to a host)");
        row(ROW_BACK, "Back");
        bomb(rows[sel]);
        bm_g_hint();
        bm_g_present();
        nap();

        if (st == 2 && bm_net_started()) { result = 1; break; }
        key = bm_g_key();
        if (key == -1 || key == -2) continue;
        bm_log("ui: join screen key %x, row %d", key, sel);
        switch (key) {
        case K_UP:   sel = st == 2 ? (sel == 3 ? 4 : 3) : (sel + 4) % 5; break;
        case K_DOWN: sel = st == 2 ? (sel == 3 ? 4 : 3) : (sel + 1) % 5; break;
        case K_ESC:  done = 1; break;
        case K_ENTER: case K_SPACE:
            if (st == 2 && sel < 3) sel = 3;
            if (sel == 4) { done = 1; break; }
            if (sel == 0 || sel == 1) {                                          /* a text field: Enter goes on to the next row */
                if (key == K_ENTER) sel++;
                break;
            }
            if (sel == 2) {
                int p = parse_port(portbuf);
                if (!bm_cfg.address[0]) bm_strcpy(status, "Type the address of the server first");
                else if (!p) bm_strcpy(status, "That is not a valid TCP port (1 - 65535)");
                else if (st != 1) { bm_cfg.jport = p; bm_net_connect(bm_cfg.address, p); shown_state = -1; }
            } else if (sel == 3) {
                if (st == 2 && n >= 2) { bm_net_send_start(); bm_strcpy(status, "Start requested - waiting for the host"); }
            }
            break;
        default:
            if (st != 2 && sel == 0) edit_field(bm_cfg.address, 100, 0, key);
            else if (st != 2 && sel == 1) edit_field(portbuf, 5, 1, key);
            break;
        }
    }
    bm_g_leave();
    if (!result) bm_net_disconnect();
    return result;
}
