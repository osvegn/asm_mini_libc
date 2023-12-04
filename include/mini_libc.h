
#ifndef MINI_LIBC_H
#define MINI_LIBC_H

long unsigned int strlen(const char *str);
char *strchr(const char *str, int i);
void *memset(void *s, int c, size_t n);
void *memcpy(void *dest, const void *src, size_t n);

#endif // MINI_LIBC_H