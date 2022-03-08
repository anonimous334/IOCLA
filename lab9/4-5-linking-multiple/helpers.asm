global isPalindrome

extern strcpy
extern strcmp

section .text
reverse:
    push ebp
    mov ebp, esp

    ;; TODO

    leave
    ret

isPalindrome:
    push ebp
    mov ebp, esp
    sub esp, 1024

    mov eax, [ebp + 8]
    lea ebx, [esp]
    push eax
    push ebx
    call strcpy
    add esp, 8

    lea eax, [esp]
    push eax
    call reverse
    add esp, 4

    mov eax, [ebp + 8]
    lea ebx, [esp]
    push eax
    push ebx
    call strcmp
    add esp, 8

    leave
    ret
