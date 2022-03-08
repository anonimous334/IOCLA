%include "io.inc"
extern printf

section .data
    before_format db "before %s", 13, 10, 0
    after_format db "after %s", 13, 10, 0
    mystring db "abcdefghij", 0

section .text
global CMAIN

toupper:
    push ebp
    mov ebp, esp
    mov ecx, 0
next:
    mov al, byte [mystring+ecx]
    test al, al
    jz end
    cmp al, 0x61
    jge transf

    jmp jump
    
jump:
    add ecx, 1
    jmp next 
    
transf:
    sub byte [mystring + ecx], 0x20
    jmp jump
    
end:

    leave
    ret

CMAIN:
    push ebp
    mov ebp, esp

    push mystring
    push before_format
    call printf
    add esp, 8

    push mystring
    call toupper
    add esp, 4

    push mystring
    push after_format
    call printf
    add esp, 8

    leave
    ret
