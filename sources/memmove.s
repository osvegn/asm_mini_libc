section .text
global memmove

; void *memmove(void *dest, const void *src, size_t n);
; rax           rdi            rsi                 rdx


memmove:
    cmp rsi, 0
    je .error
    xor rcx, rcx
    cmp rdi, rsi
    jg .loop1
    jmp .loop2

.loop1:
    cmp rdx, rcx
    jle .end
    cmp byte [rsi + rcx], 0
    je .end
    mov al, byte [rsi + rcx]
    mov byte [rdi + rcx], al
    inc rcx
    jmp .loop1

.loop2:
    cmp rdx, rcx
    jle .end
    mov r8, rdx
    sub r8, rcx
    mov al, byte [rsi + r8]
    mov byte [rdi + r8], al
    inc rcx
    jmp .loop2

.end:
    mov rax, rdi
    ret

.error:
    xor rax, rax
    ret