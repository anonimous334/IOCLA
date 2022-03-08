%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;cele doua multimi se gasesc in eax si ebx
    mov eax, 139 
    mov ebx, 169
    PRINT_DEC 4, eax ; afiseaza prima multime
    NEWLINE
    PRINT_DEC 4, ebx ; afiseaza cea de-a doua multime
    NEWLINE

    ; TODO1: reuniunea a doua multimi
    mov edx, eax
    or edx, ebx
    PRINT_DEC 4, edx
    NEWLINE

    ; TODO2: adaugarea unui element in multime
    mov edx, 96
    or eax, edx;
    PRINT_DEC 4, eax
    NEWLINE

    ; TODO3: intersectia a doua multimi
    mov eax, 139
    mov ebx, 169
    mov edx, eax
    and edx, ebx
    PRINT_DEC 4, edx
    NEWLINE

    ; TODO4: complementul unei multimi
    mov edx, eax
    not edx
    PRINT_DEC 4, edx
    NEWLINE

    ; TODO5: eliminarea unui element
    mov edx, eax
    sub edx, 1
    and eax, edx
    PRINT_DEC 4, edx
    NEWLINE

    ; TODO6: diferenta de multimi EAX-EBX
    mov eax, 139
    mov ebx, 169
    mov edx, eax
    xor edx, ebx
    and edx, eax
    PRINT_DEC 4, edx
    NEWLINE
    
    ret
