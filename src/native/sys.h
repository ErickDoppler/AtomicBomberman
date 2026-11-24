/* The few operating-system services the portable build needs that differ between Windows and POSIX (sys.c). */
#ifndef SYS_H
#define SYS_H
#include <stdint.h>

void    *sys_map_fixed(uintptr_t addr, size_t size);     /* zeroed read/write memory at exactly addr, or 0 */
uint64_t sys_ms(void);                                   /* monotonic milliseconds */
void     sys_sleep(unsigned ms);
int      sys_thread(void (*fn)(void *), void *arg);      /* a detached thread; 0 on success */
void     sys_yield(void);
void     sys_on_crash(void (*cb)(uintptr_t fault, uintptr_t code_addr));   /* report a crash (guest registers) before dying */

/* BSD-style sockets: handles are plain ints, addresses are IPv4 (host byte order address, port) */
int  sys_net_start(void);
int  sys_tcp_socket(void);                               /* -1 on error */
int  sys_bind(int s, uint32_t addr, int port);           /* 0 ok, -1 port in use / denied */
int  sys_listen(int s);
int  sys_accept(int s, uint32_t *addr);                  /* -1 on error */
int  sys_connect(int s, uint32_t addr, int port);        /* 0 ok */
int  sys_send(int s, const void *b, int n);
int  sys_recv(int s, void *b, int n);
int  sys_close(int s);
void sys_nodelay(int s);
int  sys_resolve(const char *name, uint32_t *addr);      /* 0 ok */
int  sys_local_addrs(uint32_t *out, int max);            /* the computer's IPv4 addresses (host order), count */
#endif
