#include <stdio.h>
#include "mini_libc.h"

int main(void)
{
    const char *str = "sample string.";
    char str_memset[11] = "salut toi!";
    char str_memcpy1[11] = "coucou !!!";
    char str_memcpy2[11] = "";
    char strcmp1[10] = "salut";
    char strcmp2[10] = "ralut";

    printf("strlen (%s): %d\n", str, strlen(str));
    printf("strchr (%s)(%c): %s\n", str, 'i', strchr(str, 'i'));
    // printf("memset (%s)(%c)(%d): ", str_memset, 'r', 5);
    // printf("%s\n", memset(str_memset, 'r', 5));
    printf("%s\n", memcpy(str_memcpy2, str_memcpy1, 5));
    printf("%s, %s\n", str_memcpy1, str_memcpy2);
    printf("strcmp (%s)(%s): %d\n", strcmp1, strcmp2, strcmp(strcmp1, strcmp2));
    return 0;
}
