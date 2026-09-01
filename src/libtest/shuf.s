/* void shuf(char *data, const char *mask) */
.global shuf
shuf:
	movups (%rdi), %xmm0
	movups (%rsi), %xmm1
	pshufb %xmm1, %xmm0
	movups %xmm0, (%rdi)
	ret
