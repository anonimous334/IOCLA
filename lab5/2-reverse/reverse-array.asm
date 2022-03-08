%include "io.inc"

section .data

%define ARRAY_LEN 7

    input dd 122, 184, 199, 242, 263, 845, 911
    output times ARRAY_LEN dd 0

section .text
global CMAIN
CMAIN:

    ; TODO push the elements of the array on the stack
    mov ecx, ARRAY_LEN
loop1:
    push dword[input + ecx * 4 - 4]
    loop loop1
    
    mov ecx, ARRAY_LEN
loop2:
    pop dword[output + ecx * 4 - 4]
    loop loop2
    
    
    ; TODO retrieve the elements (pop) from the stack into the output array

    PRINT_STRING "Reversed array:"
    NEWLINE
    xor ecx, ecx
print_array:
    PRINT_UDEC 4, [output + 4 * ecx]
    NEWLINE
    inc ecx
    cmp ecx, ARRAY_LEN
    jb print_array

    xor eax, eax
    ret
