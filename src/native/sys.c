/* Operating-system services for the portable build: the only file with Windows / POSIX differences. */
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "sys.h"

#ifdef _WIN32
#include <winsock2.h>
#include <ws2tcpip.h>
#include <windows.h>
typedef SOCKET sock_t;
#define SOCK_BAD INVALID_SOCKET
#else
#include <sys/mman.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <ifaddrs.h>
#include <unistd.h>
#include <time.h>
#include <pthread.h>
#include <sched.h>
#include <signal.h>
typedef int sock_t;
#define SOCK_BAD (-1)
#endif

void *sys_map_fixed(uintptr_t addr, size_t size) {
#ifdef _WIN32
    return VirtualAlloc((void *)addr, size, MEM_RESERVE | MEM_COMMIT, PAGE_READWRITE);
#else
#ifndef MAP_FIXED_NOREPLACE
#define MAP_FIXED_NOREPLACE 0x100000
#endif
    void *p = mmap((void *)addr, size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED_NOREPLACE | MAP_NORESERVE, -1, 0);
    if (p == MAP_FAILED) return 0;
    if ((uintptr_t)p != addr) { munmap(p, size); return 0; }       /* an old kernel ignores the flag and picks another place */
    return p;
#endif
}

uint64_t sys_ms(void) {
#ifdef _WIN32
    return GetTickCount64();
#else
    struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t);
    return (uint64_t)t.tv_sec * 1000 + (uint64_t)t.tv_nsec / 1000000;
#endif
}

void sys_sleep(unsigned ms) {
#ifdef _WIN32
    Sleep(ms);
#else
    struct timespec t; t.tv_sec = ms / 1000; t.tv_nsec = (long)(ms % 1000) * 1000000L;
    nanosleep(&t, 0);
#endif
}

void sys_yield(void) {
#ifdef _WIN32
    Sleep(0);
#else
    sched_yield();
#endif
}

typedef struct { void (*fn)(void *); void *arg; } tstart_t;
#ifdef _WIN32
static DWORD WINAPI tmain(void *p) { tstart_t t = *(tstart_t *)p; free(p); t.fn(t.arg); return 0; }
int sys_thread(void (*fn)(void *), void *arg) {
    tstart_t *t = malloc(sizeof *t); HANDLE h;
    t->fn = fn; t->arg = arg;
    h = CreateThread(0, 0, tmain, t, 0, 0);
    if (!h) { free(t); return -1; }
    CloseHandle(h);
    return 0;
}
#else
static void *tmain(void *p) { tstart_t t = *(tstart_t *)p; free(p); t.fn(t.arg); return 0; }
int sys_thread(void (*fn)(void *), void *arg) {
    pthread_t th; pthread_attr_t at;
    tstart_t *t = malloc(sizeof *t);
    t->fn = fn; t->arg = arg;
    pthread_attr_init(&at); pthread_attr_setdetachstate(&at, PTHREAD_CREATE_DETACHED);
    if (pthread_create(&th, &at, tmain, t)) { free(t); return -1; }
    return 0;
}
#endif

/* ---------------------------------------------------------------- sockets */
int sys_net_start(void) {
#ifdef _WIN32
    static int done; WSADATA d;
    if (done) return 0;
    if (WSAStartup(MAKEWORD(2, 2), &d)) return -1;
    done = 1;
#else
    signal(SIGPIPE, SIG_IGN);
#endif
    return 0;
}
int sys_tcp_socket(void) { sock_t s = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP); return s == SOCK_BAD ? -1 : (int)s; }
int sys_bind(int s, uint32_t addr, int port) {
    struct sockaddr_in a;
    memset(&a, 0, sizeof a); a.sin_family = AF_INET; a.sin_port = htons((unsigned short)port); a.sin_addr.s_addr = htonl(addr);
#ifndef _WIN32
    { int one = 1; setsockopt((sock_t)s, SOL_SOCKET, SO_REUSEADDR, (const char *)&one, sizeof one); }
#endif
    return bind((sock_t)s, (struct sockaddr *)&a, sizeof a) ? -1 : 0;
}
int sys_listen(int s) { return listen((sock_t)s, 8) ? -1 : 0; }
int sys_accept(int s, uint32_t *addr) {
    struct sockaddr_in a; socklen_t l = sizeof a;
    sock_t c = accept((sock_t)s, (struct sockaddr *)&a, &l);
    if (c == SOCK_BAD) return -1;
    if (addr) *addr = ntohl(a.sin_addr.s_addr);
    return (int)c;
}
int sys_connect(int s, uint32_t addr, int port) {
    struct sockaddr_in a;
    memset(&a, 0, sizeof a); a.sin_family = AF_INET; a.sin_port = htons((unsigned short)port); a.sin_addr.s_addr = htonl(addr);
    return connect((sock_t)s, (struct sockaddr *)&a, sizeof a) ? -1 : 0;
}
int sys_send(int s, const void *b, int n) { return (int)send((sock_t)s, (const char *)b, n, 0); }
int sys_recv(int s, void *b, int n) { return (int)recv((sock_t)s, (char *)b, n, 0); }
int sys_close(int s) {
#ifdef _WIN32
    shutdown((sock_t)s, SD_BOTH);
    return closesocket((sock_t)s);
#else
    shutdown(s, SHUT_RDWR);                      /* wakes a thread blocked in accept / recv on it */
    return close(s);
#endif
}
void sys_nodelay(int s) { int one = 1; setsockopt((sock_t)s, IPPROTO_TCP, TCP_NODELAY, (const char *)&one, sizeof one); }
int sys_resolve(const char *name, uint32_t *addr) {
    struct addrinfo hints, *res = 0;
    memset(&hints, 0, sizeof hints); hints.ai_family = AF_INET; hints.ai_socktype = SOCK_STREAM;
    if (getaddrinfo(name, 0, &hints, &res) || !res) return -1;
    *addr = ntohl(((struct sockaddr_in *)res->ai_addr)->sin_addr.s_addr);
    freeaddrinfo(res);
    return 0;
}
int sys_local_addrs(uint32_t *out, int max) {
    int n = 0;
#ifdef _WIN32
    char name[256]; struct addrinfo hints, *res = 0, *p;
    if (gethostname(name, sizeof name)) return 0;
    memset(&hints, 0, sizeof hints); hints.ai_family = AF_INET;
    if (getaddrinfo(name, 0, &hints, &res) || !res) return 0;
    for (p = res; p && n < max; p = p->ai_next) out[n++] = ntohl(((struct sockaddr_in *)p->ai_addr)->sin_addr.s_addr);
    freeaddrinfo(res);
#else
    struct ifaddrs *ifa, *p;
    if (getifaddrs(&ifa)) return 0;
    for (p = ifa; p && n < max; p = p->ifa_next) {
        uint32_t a;
        if (!p->ifa_addr || p->ifa_addr->sa_family != AF_INET) continue;
        a = ntohl(((struct sockaddr_in *)p->ifa_addr)->sin_addr.s_addr);
        if ((a >> 24) == 127) continue;
        out[n++] = a;
    }
    freeifaddrs(ifa);
#endif
    return n;
}

/* ---------------------------------------------------------------- crash report */
static void (*crash_cb)(uintptr_t fault, uintptr_t code_addr);
#ifdef _WIN32
static LONG WINAPI crash_filter(EXCEPTION_POINTERS *e) {
    fprintf(stderr, "native image offset %llx\n", (unsigned long long)((uintptr_t)e->ExceptionRecord->ExceptionAddress - (uintptr_t)GetModuleHandle(0)));
    if (crash_cb) crash_cb(e->ExceptionRecord->NumberParameters > 1 ? (uintptr_t)e->ExceptionRecord->ExceptionInformation[1] : 0, (uintptr_t)e->ExceptionRecord->ExceptionAddress);
    return EXCEPTION_EXECUTE_HANDLER;
}
void sys_on_crash(void (*cb)(uintptr_t, uintptr_t)) { crash_cb = cb; SetUnhandledExceptionFilter(crash_filter); }
#else
static void crash_sig(int sig, siginfo_t *si, void *ctx) { (void)sig; (void)ctx; if (crash_cb) crash_cb((uintptr_t)si->si_addr, 0); _exit(139); }
void sys_on_crash(void (*cb)(uintptr_t, uintptr_t)) {
    struct sigaction sa; crash_cb = cb;
    memset(&sa, 0, sizeof sa); sa.sa_sigaction = crash_sig; sa.sa_flags = SA_SIGINFO;
    sigaction(SIGSEGV, &sa, 0); sigaction(SIGBUS, &sa, 0);
}
#endif
