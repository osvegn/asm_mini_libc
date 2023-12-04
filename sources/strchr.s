global strchr

section .text

strchr:
    cmp rdi, 0
    je strchr_error

strchr_loop:
    cmp byte [rdi], 0
    je strchr_error
    cmp byte [rdi], sil
    je strchr_end
    inc rdi
    jmp strchr_loop

strchr_end:
    mov rax, rdi
    ret

strchr_error:
    mov rax, 0
    ret
