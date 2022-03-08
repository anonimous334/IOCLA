%include "io.inc"

%define ARRAY_SIZE 13
%define DECIMAL_PLACES 5

section .data
    num_array dw 76, 12, 65, 19, 781, 671, 431, 761, 782, 12, 91, 25, 9
    array_sum_prefix db "Sum of numbers: ",0
    array_mean_prefix db "Numbers mean: ",0
    decimal_point db ".",0

section .text
global CMAIN
CMAIN:
    xor eax, eax
    mov ecx, ARRAY_SIZE

    ; TODO1 - compute the sum of the vector numbers - store it in ax
sum:
    mov dx, word[num_array + ecx * 2 - 2]
    add ax, dx
    loop sum
    
    PRINT_STRING array_sum_prefix
    PRINT_UDEC 2, ax
    NEWLINE

    xor edx, edx
    mov ebx, ARRAY_SIZE
    div bx
    

    ; TODO2 - compute the quotient of the mean

    PRINT_STRING array_mean_prefix
    PRINT_UDEC 2, ax
    PRINT_STRING decimal_point

    mov ecx, DECIMAL_PLACES
compute_decimal_place:

    ; TODO3 - compute the current decimal place - store it in ax

    mov ax, dx
    mov bx, 10
    mul bx
    mov bx, ARRAY_SIZE
    div bx

    PRINT_UDEC 2, ax
    dec ecx
    cmp ecx, 0
    jg compute_decimal_place

    NEWLINE

    xor eax, eax
    ret
