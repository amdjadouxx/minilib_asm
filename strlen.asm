BITS 64

;found length of rdi

section .text
    global my_strlen

    my_strlen:
        xor rcx, rcx
        xor rax, rax

    loop_strlen:
        cmp byte[rdi + rax], 0
        je end_strlen
        inc rax
        jmp loop_strlen

    end_strlen:
        ret
        
