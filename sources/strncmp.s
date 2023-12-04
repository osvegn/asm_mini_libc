section .text
    global strncmp

; int strncmp(const char *s1, const char *s2, size_t n);
; rax         rdi             rsi             rdx

strncmp:
    cmp rdi, 0
    je .error
    cmp rsi, 0
    je .error
    xor rcx, rcx
    jmp .loop

.loop:
    mov r8b, byte [rdi + rcx]
    mov r9b, byte [rsi + rcx]
    cmp rdx, rcx
    jle .end
    cmp r8b, 0
    je .end
    cmp r9b, 0
    je .end
    cmp r8b, r9b
    jne .end
    inc rcx
    jmp .loop

.end:
    mov rax, r9
    sub rax, r8
    ret

.error:
    xor rax, rax
    mov rax, 42
    ret
