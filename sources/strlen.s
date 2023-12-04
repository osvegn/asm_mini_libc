global strlen

section .text

strlen:
    mov rcx, 0
    cmp rdi, 0
    je strlen_error

strlen_loop:
    cmp byte [rdi + rcx], 0
    je strlen_end
    inc rcx
    jmp strlen_loop

strlen_end:
    mov rax, rcx
    ret

strlen_error:
    mov rax, -1
    ret