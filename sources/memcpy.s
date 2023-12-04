bits 64

section .text
    global memcpy

; void *memcpy(void *dest, const void *src, size_t n);
; rax          rdi         rsi              rdx

memcpy:
    cmp rsi, 0
    je .error
    xor rcx, rcx

.loop:
    cmp rdx, rcx
    jle .end
    cmp byte [rsi + rcx], 0
    je .end
    mov al, [rsi + rcx]
    mov [rdi + rcx], al
    inc rcx
    jmp .loop

.error:
    xor rax, rax
    ret

.end:
    mov rax, rdi
    ret