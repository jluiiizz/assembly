; x86_64
section         .bss
        num     resb 2

section         .text
        global  _start

_start:         
        mov     rax, 1
        mov     rdi, 1
        mov     rsi, inpMsg
        mov     rdx, lenInpMsg
        syscall

        mov     rax, 0
        mov     rdi, 0
        mov     rsi, num
        mov     rdx, 10
        syscall

        mov     rax, 1
        mov     rdi, 1
        mov     rsi, outMsg
        mov     rdx, lenOutMsg
        syscall

        mov     rax, 1
        mov     rdi, 1
        mov     rsi, num
        mov     rdx, numLen
        syscall

        mov     rax, 60
        mov     rdi, 0
        syscall

section         .data
        inpMsg     db "Enter a number: "
        lenInpMsg  equ $ - inpMsg

        outMsg     db "You entered "
        lenOutMsg  equ $ - outMsg

        numLen db 2

        