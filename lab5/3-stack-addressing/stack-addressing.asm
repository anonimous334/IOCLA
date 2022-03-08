%include "io.inc"

%define NUM 5

section .text
global CMAIN
CMAIN:
    mov ebp, esp

    ; TODO 1: replace every push by an equivalent sequence of commands
    mov ecx, NUM
push_nums:
    ;push ecx
    sub esp, 4
    mov [esp], ecx
    loop push_nums

    ;push 0
    sub esp, 4
    mov dword[esp], 0
    ;push "mere"
    sub esp, 4
    mov dword[esp], "mere"
    ;push "are "
    sub esp, 4
    mov dword[esp], "are"
    ;push "Ana "
    sub esp, 4
    mov dword[esp], "Ana"

    PRINT_STRING [esp]
    NEWLINE

    ; TODO 2: print the stack in "address: value" format in the range of [ESP:EBP]
    
    mov eax, esp
    
loop_stack:
    PRINT_STRING "0x"
    PRINT_HEX 4, eax
    PRINT_STRING ": 0x"
    PRINT_HEX 4, [eax]
    NEWLINE
    add eax, 4
    cmp ebp, eax
    jge loop_stack

    ; TODO 3: print the string
    PRINT_STRING [esp]

    ; restore the previous value of the EBP (Base Pointer)
    mov esp, ebp

    ; exit without errors
    xor eax, eax
    ret
