section .text

global get_max

get_max:
	push ebp
	mov ebp, esp

	mov ebx, [ebp+8] 	; [ebp+8] is array pointer
	mov ecx, [ebp+12]		; [ebp+12] is array length
	mov edx, [ebp+16]
	xor eax, eax

compare:
	cmp eax, [ebx+ecx*4-4]
	jge check_end
	mov eax, [ebx+ecx*4-4]
	mov [edx], ecx
check_end:
	loopnz compare

	leave
	ret
