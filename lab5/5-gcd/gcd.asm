%include "io.inc"

section .text
global CMAIN
CMAIN:
    ; input values (eax, edx): the 2 numbers to compute the gcd for
    mov eax, 49
    ;mov ecx, eax
    mov edx, 28
    ;mov ebx, edx
    
    
    push eax
    push edx

gcd:
    neg     eax
    je      L3

L1:
    neg     eax
    push eax
    push edx
    pop eax
    pop edx

L2:
    sub     eax,edx
    jg      L2
    jne     L1

L3:
    add     eax,edx
    jne     print
    inc     eax

print:

    ; TODO 1: solve the 'The program crashed!' error
    
    ; dadea crash pentru ca erau cele 2 push-uri de la inceput care nu au fost scoase
    ; si nici nu era resetat esp la ebp la final

    ; TODO 2: print the result in the form of: "gdc(eax, edx)=7"
    pop ebx
    pop ecx
    PRINT_STRING "gdc("
    PRINT_UDEC 4, ecx
    PRINT_STRING ", "
    PRINT_UDEC 4, ebx
    PRINT_STRING ") = "
    
    PRINT_UDEC 4, eax  ; output value in eax

    xor eax, eax
    ret
