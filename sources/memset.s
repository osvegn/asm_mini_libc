global memset

section .text

; void *memset(void *s, int c, size_t n);
; rax          rdi      rsi    rdx

memset:
    mov rcx, 0

memset_loop:
    cmp rdx, rcx
    jle memset_end
    mov byte [rdi + rcx], sil
    inc rcx
    jmp memset_loop

memset_end:
    mov rax, rdi
    ret