; x86_64
section .text
        global _start 
_start:
        mov     rax, 1
        mov     rdi, 1
        mov     rsi, msg
        mov     rdx, len
        syscall

        mov rax, 60
        mov rdi, 0
        syscall

section .data
        msg     db "Hello, World! This is a simple test!"
        len     equ $ - msg

