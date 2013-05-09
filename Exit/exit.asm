
	.global _start
	.section .text

_start:	xor %eax, %eax
	xor %ebx, %ebx
	subl $0xFFFFFFFF, %eax
	subl $0xFFFFFFFE, %ebx
	int $0x80
	
