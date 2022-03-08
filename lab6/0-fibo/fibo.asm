%include "io.inc"

%define NUM_FIBO 10

section .text
global CMAIN
CMAIN:
    xor eax, eax
    xor ebx, ebx
    xor edx, edx
    mov ebp, esp

    mov ecx, NUM_FIBO
    sub ecx, 2
    mov eax, 1
    mov ebx, 1
    push eax
    push ebx
    mov edx, 0

fibo:

    mov edx, eax
    add edx, ebx
    mov eax, ebx
    mov ebx, edx
    push edx

    loop fibo

    mov ecx, NUM_FIBO
print:
    PRINT_UDEC 4, [esp + (ecx - 1) * 4]
    NEWLINE
    dec ecx
    cmp ecx, 0
    jnz print

    mov esp, ebp
    xor eax, eax
    ret
