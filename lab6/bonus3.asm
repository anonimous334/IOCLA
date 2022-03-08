%include "io.inc"

extern printf

section .data
    before_format db "before %s", 13, 10, 0
    after_format db "after %s", 13, 10, 0
    mystring db "ana\0are\0mre\0", 0
    len dd 10

section .text
global CMAIN

rot13:
    push ebp
    mov ebp, esp
    mov ecx, 0
next:
    mov al, byte [mystring+ecx]
    cmp al, 0
    jz end
    add al, 0xD
    cmp al, 0x5A
    jg over
    cmp al, 0x41
    jl below
    add byte [mystring+ecx], 0xD
    jmp below

over:
    sub al, 0x5A
    add al, 0x40
    mov byte [mystring+ecx], al
    
below:
    add ecx, 1
    jmp next

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
    call rot13
    add esp, 4

    push mystring
    push after_format
    call printf
    add esp, 8

    leave
    ret