%include "io.inc"

%define ARRAY_SIZE    10

section .data
    byte_array db -8, 19, 12, 3, 6, -13, -55, 19, 78, 102

section .text
global CMAIN
CMAIN:
    mov ecx, ARRAY_SIZE
    xor ebx, ebx
    xor eax, eax
getnum:
    mov dl, byte [byte_array + ecx - 1]
    cmp dl, 0
    jg greater
    inc ebx;
greater:
    inc eax;
    loop getnum
    
    PRINT_DEC 4, eax
    NEWLINE
    PRINT_DEC 4, ebx
    
    ret