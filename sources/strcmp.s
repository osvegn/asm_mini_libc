global strcmp

section .text

;  int strcmp(const char *s1, const char *s2);
;  rax        rdi             rsi

strcmp:
    mov r8b, byte [rdi]
    mov r9b, byte [rsi]
    cmp r8b, 0
    je .end
    cmp r9b, 0
    je .end
    cmp r8b, r9b
    jne .end
    inc rdi
    inc rsi
    jmp strcmp

.end:
    mov rax, [rsi]
    sub rax, [rdi]
    ret

.error:
    xor rax, rax
    ret