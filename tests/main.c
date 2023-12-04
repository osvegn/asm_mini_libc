#include <stdio.h>
#include "mini_libc.h"

int main(void)
{
    const char *str = "sample string.";
    char str_memset[11] = "salut toi!";
    char str_memcpy1[11] = "coucou !!!";
    char str_memcpy2[11] = "";
    char strcmp1[10] = "salut";
    char strcmp2[10] = "saltt";
    char strmemmove1[10] = "tests!!!!";
    char strmemmove2[10] = "";

    printf("strlen (%s): %d\n", str, strlen(str));
    printf("strchr (%s)(%c): %s\n", str, 'i', strchr(str, 'i'));
    printf("memset (%s)(%c)(%d): ", str_memset, 'r', 5);
    printf("%s\n", memset(str_memset, 'r', 5));
    printf("memcpy before: %s, %s\n", str_memcpy1, str_memcpy2);
    printf("memcpy run: %s\n", memcpy(str_memcpy2, str_memcpy1, 5));
    printf("memcpy after: %s, %s\n", str_memcpy1, str_memcpy2);
    printf("strcmp (%s)(%s): %d\n", strcmp1, strcmp2, strcmp(strcmp1, strcmp2));
    printf("memmove (%u)(%u) before\n", strmemmove2, strmemmove1);
    printf("memmove run: %s\n", memmove(strmemmove2, strmemmove1, 10));
    printf("memmove (%s)(%s) after\n", strmemmove2, strmemmove1);

    printf("strstr: %s\n", strstr("sample string!", "ple "));

    printf("strncmp (%s)(%s)(%d): %d\n", "string", "strinr", 4, strncmp("string", "strinr", 4));
    printf("rindex (%s)(%c): %s\n", str, 's', rindex(str, 's'));
    return 0;
}
