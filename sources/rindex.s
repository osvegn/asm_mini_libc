bits 64
section .text
global rindex

; char *rindex(const char *, int)
; rax          rdi           rsi (sil)

rindex:
    mov r8b, byte [rdi]
    cmp r8b, 0
    je .end
    cmp r8b, sil
    je .save
.tmp:
    inc rdi
    jmp rindex

.save:
    mov rax, rdi
    jmp .tmp

.end:
    ret
