%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov eax, 1       ; vrem sa aflam al N-lea numar; N = 7
    xor ebx, ebx
    mov ecx, 7
    
 fiboLoop:
    add eax, ebx
    xchg eax, ebx
    loop fiboLoop
    
    PRINT_DEC 4, eax
    ; TODO: calculati al N-lea numar fibonacci (f(0) = 0, f(1) = 1)
    ret