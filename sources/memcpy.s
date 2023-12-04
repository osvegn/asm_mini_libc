global memcpy

section .text

; void *memcpy(void *dest, const void *src, size_t n);
; rax          rdi         rsi              rdx

memcpy:
    cmp rsi, 0
    je memcpy_error
    mov rcx, 0

memcpy_loop:
    cmp rdx, rcx
    jle memcpy_end
    cmp byte [rsi + rcx], 0
    je memcpy_end
    mov rax, [rsi + rcx]
    mov [rdi + rcx], rax
    inc rcx
    jmp memcpy_loop

memcpy_error:
    mov rax, 0
    ret

memcpy_end:
    mov byte [rdi + rcx], 0
    mov rax, rdi
    ret