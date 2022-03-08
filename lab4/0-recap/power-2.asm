%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov eax, 211     ; to be broken down into powers of 2
    mov ebx, 1       ; stores the current power

    ; TODO generate and print the powers of 2
    mov ecx, 1
    
breakno:
    PRINT_DEC 4, ecx
    NEWLINE
    sub eax, ecx
    imul ecx, 2
    test eax, eax
    jg breakno
    xor eax, eax
    ret