global strcmp

section .text

;  int strcmp(const char *s1, const char *s2);
;  rax        rdi             rsi

strcmp:
    mov rcx, 0

strcmp_loop:
    mov r8, [rdi + rcx]
    mov r9, [rsi + rcx]
    cmp r8, r9
    jne strcmp_end
    inc rcx
    jmp strcmp_loop

strcmp_end:
    mov rax, byte r8
    sub rax, byte r9
    ret

strcmp_error:
    mov rax, 0
    ret