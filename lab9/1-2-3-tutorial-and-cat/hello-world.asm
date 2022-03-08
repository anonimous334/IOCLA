global main
extern printf
extern gets
extern puts

section .data
    message: db 'Hello, World', 10, 0
    buffer: times 20 db 0

section .text
main:
    push message
    call printf
    add esp, 4
    
    push buffer
    call gets 
    add esp, 4
    
    push buffer
    call puts
    add esp, 4
    
    ret
