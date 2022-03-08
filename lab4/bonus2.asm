%include "io.inc"

%define ARRAY_SIZE    10

section .data
    byte_array db 8, 19, 12, 3, 6, 13, 55, 19, 78, 102

section .text
global CMAIN
CMAIN:
    mov ecx, ARRAY_SIZE
    xor ebx, ebx
    xor eax, eax
    xor edx, edx
    mov bl, 2
getnum:
    mov al, byte [byte_array + ecx - 1]
    test al, 1
    je par
    inc ebx;
par:
    inc edx;
    loop getnum
    
    PRINT_DEC 4, ebx
    NEWLINE
    sub edx, ebx
    PRINT_DEC 2, edx
    
    ret