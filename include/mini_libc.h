
#ifndef MINI_LIBC_H
#define MINI_LIBC_H

long unsigned int strlen(const char *str);
char *strchr(const char *str, int i);
void *memset(void *s, int c, size_t n);
void *memcpy(void *dest, const void *src, size_t n);
int strcmp(const char *src1, const char *src2);
void *memmove(void *dest, const void *src, size_t n);
const char *strstr(const char *, const char *);

#endif // MINI_LIBC_H