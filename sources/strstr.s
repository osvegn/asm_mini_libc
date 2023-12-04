bits 64
section .text
global strstr

; char *strstr(const char *, const char *)
; rax          rdi           rsi

strstr:
    cmp rdi, 0
    je .error
    cmp rsi, 0
    je .error
    xor rdx, rdx ; occ loop
    xor rcx, rcx ; main loop

.loop:
    cmp byte [rdi + rcx], 0
    je .error
    cmp byte [rdi + rcx], sil
    je .occ
    inc rcx
    jmp .loop

.found:
    inc rdx
    jmp .occ

.occ:
    cmp byte [rsi + rdx], 0
    je .end
    mov rax, [rcx + rdx]
    mov r8, [rsi, rdx]
    cmp byte [rdi + rax], r8b
    je .found
    xor rdx, rdx
    inc rcx
    jmp .loop

.end:
    mov rax, [rdi + rcx]
    ret

.error:
    xor rax, rax
    ret