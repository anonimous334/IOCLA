%include "io.inc"

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic

section .data
    hex db "0x", 0
    num1 db 43
    num2 db 39
    num1_w dw 1349
    num2_w dw 9949
    num1_d dd 134932
    num2_d dd 994912

section .text
global CMAIN
CMAIN:
    mov al, byte [num1]
    mov bl, byte [num2]
    mul bl
    PRINT_STRING hex
    PRINT_HEX 2, ax
    NEWLINE

    mov ax, word [num1_w]
    mov bx, word [num2_w]
    mul bx
    PRINT_STRING hex
    PRINT_HEX 2, dx
    PRINT_HEX 2, ax
    NEWLINE
    
    mov eax, dword [num1_w]
    mov ebx, dword [num2_w]
    mul bx
    PRINT_STRING hex
    PRINT_HEX 4, edx
    PRINT_HEX 4, eax
    NEWLINE

    ; TODO: Implement multiplication for dw and dd data types.

    ret
