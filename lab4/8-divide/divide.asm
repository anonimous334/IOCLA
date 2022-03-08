%include "io.inc"

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic

section .data
    string_quotient db "Quotient: ", 0
    string_remainder db "Remainder: ", 0
    dividend1 db 91
    divisor1 db 27
    dividend2 dd 67254
    divisor2 dw 1349
    dividend3 dq 69094148
    divisor3 dd 87621

section .text
global CMAIN
CMAIN:
    xor eax, eax
    mov al, byte [dividend1]
    mov bl, byte [divisor1]
    div bl
    PRINT_STRING string_quotient
    PRINT_UDEC 1, AL
    NEWLINE
    PRINT_STRING string_remainder
    PRINT_UDEC 1, AH
    NEWLINE
    mov dx, [dividend2 + 2]
    mov ax, [dividend2]
    mov bx, [divisor2]
    div bx
    PRINT_STRING string_quotient
    PRINT_UDEC 2, AX
    NEWLINE
    PRINT_STRING string_remainder
    PRINT_UDEC 2, DX
    NEWLINE
    
    mov edx, [dividend3 + 4]
    mov eax, [dividend3]
    mov ebx, [divisor3]
    div ebx
    PRINT_STRING string_quotient
    PRINT_UDEC 4, EAX
    NEWLINE
    PRINT_STRING string_remainder
    PRINT_UDEC 4, EDX
    NEWLINE
    
    
    ; TODO: Calculate quotient and remainder for 67254 / 1349.

    ; TODO: Calculate quotient and remainder for 69094148 / 87621.

    ret
