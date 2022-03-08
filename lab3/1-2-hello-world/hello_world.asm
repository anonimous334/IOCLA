%include "io.inc"

section .data
    myString: db "Hello, World!",0
    goodbye: db "Goodbye, World!",0

section .text
global CMAIN
CMAIN:
    mov ecx, 6                 ; N = valoarea registrului ecx
    mov eax, 2
    mov ebx, 1
firstStep:
    cmp eax, ebx
    jg print
    jmp printFinal
print:
    PRINT_STRING myString
    NEWLINE
    sub ecx, 1
    cmp ecx, 0
    jg firstStep;                           ; TODO2.2: afisati "Hello, World!" de N ori
    jmp printFinal                           ; TODO2.1: afisati "Goodbye, World!"

printFinal:
    PRINT_STRING goodbye
    NEWLINE
    
    ret
