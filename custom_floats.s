	.section	__TEXT,__text,regular,pure_instructions
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI0_0:
	.long	0                       ## double 2
	.long	1073741824
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_mantissa
	.align	4, 0x90
_mantissa:                              ## @mantissa
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$68, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	xorps	%xmm0, %xmm0
	movl	$4294967295, %esi       ## imm = 0xFFFFFFFF
	movl	%edx, -8(%ebp)
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %ecx
                                        ## kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       ## imm = 0xFFFFFFFF
	movl	%esi, -16(%ebp)
	movl	-8(%ebp), %edx
	andl	-16(%ebp), %edx
	movl	%edx, -20(%ebp)
	movss	%xmm0, -24(%ebp)
	movl	$1, -28(%ebp)
	movl	%eax, -52(%ebp)         ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jg	LBB0_6
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%ebp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	LBB0_4
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%ebp), %eax
	subl	-28(%ebp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	%esp, %eax
	movsd	%xmm0, 8(%eax)
	movl	-52(%ebp), %ecx         ## 4-byte Reload
	movsd	LCPI0_0-L0$pb(%ecx), %xmm0
	movsd	%xmm0, (%eax)
	calll	_pow
	fstpl	-48(%ebp)
	movsd	-48(%ebp), %xmm0
	movl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	cvtss2sd	-24(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -24(%ebp)
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%ebp), %eax
	shrl	$1, %eax
	movl	%eax, -20(%ebp)
## BB#5:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	LBB0_1
LBB0_6:
	movss	-24(%ebp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%ebp)
	fldl	-40(%ebp)
	addl	$68, %esp
	popl	%esi
	popl	%ebp
	ret

	.globl	_is_normalized
	.align	4, 0x90
_is_normalized:                         ## @is_normalized
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$28, %esp
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	$4294967295, %esi       ## imm = 0xFFFFFFFF
	movl	%edx, -12(%ebp)
	movl	%ecx, -16(%ebp)
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	subl	-20(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %ecx
                                        ## kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       ## imm = 0xFFFFFFFF
	movl	%esi, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %ecx
                                        ## kill: CL<def> ECX<kill>
	shrl	%cl, %edx
	andl	%edx, %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	LBB1_2
## BB#1:
	movl	$0, -8(%ebp)
	jmp	LBB1_3
LBB1_2:
	movl	$1, -8(%ebp)
LBB1_3:
	movl	-8(%ebp), %eax
	addl	$28, %esp
	popl	%esi
	popl	%ebp
	ret

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI2_0:
	.long	0                       ## double 2
	.long	1073741824
LCPI2_1:
	.long	0                       ## double 4503599627370496
	.long	1127219200
LCPI2_2:
	.long	0                       ## double +Inf
	.long	2146435072
LCPI2_3:
	.long	0                       ## double -1
	.long	3220176896
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_exponent
	.align	4, 0x90
_exponent:                              ## @exponent
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$116, %esp
	calll	L2$pb
L2$pb:
	popl	%eax
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %esi
	movl	%esi, -20(%ebp)
	movl	%edx, -24(%ebp)
	movl	%ecx, -28(%ebp)
	movl	-24(%ebp), %ecx
	subl	-28(%ebp), %ecx
	subl	$1, %ecx
	movl	%ecx, -32(%ebp)
	movl	-32(%ebp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	%esp, %ecx
	movsd	%xmm0, 8(%ecx)
	movsd	LCPI2_0-L2$pb(%eax), %xmm0
	movsd	%xmm0, (%ecx)
	movl	%eax, -100(%ebp)        ## 4-byte Spill
	calll	_pow
	fstpl	-56(%ebp)
	movsd	-56(%ebp), %xmm0
	movl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	movl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -36(%ebp)
	movl	-32(%ebp), %ecx
                                        ## kill: CL<def> ECX<kill>
	shll	%cl, %eax
	xorl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-28(%ebp), %ecx
                                        ## kill: CL<def> ECX<kill>
	shrl	%cl, %edx
	andl	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jne	LBB2_4
## BB#1:
	movl	-20(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	_mantissa
	fstpl	-88(%ebp)
	movsd	-88(%ebp), %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	LBB2_2
	jp	LBB2_2
	jmp	LBB2_3
LBB2_2:
	movl	-100(%ebp), %eax        ## 4-byte Reload
	movsd	LCPI2_3-L2$pb(%eax), %xmm0
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, -16(%ebp)
	jmp	LBB2_14
LBB2_3:
	movl	-100(%ebp), %eax        ## 4-byte Reload
	movsd	LCPI2_2-L2$pb(%eax), %xmm0
	movsd	%xmm0, -16(%ebp)
	jmp	LBB2_14
LBB2_4:
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	_is_normalized
	cmpl	$0, %eax
	je	LBB2_6
## BB#5:
	movl	-44(%ebp), %eax
	subl	-36(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	LBB2_7
LBB2_6:
	movl	$1, %eax
	subl	-36(%ebp), %eax
	movl	%eax, -48(%ebp)
LBB2_7:
	xorps	%xmm0, %xmm0
	movl	-44(%ebp), %eax
	movl	-100(%ebp), %ecx        ## 4-byte Reload
	movsd	LCPI2_1-L2$pb(%ecx), %xmm1
	movaps	%xmm1, %xmm2
	movd	%eax, %xmm3
	por	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	ucomisd	%xmm0, %xmm3
	jne	LBB2_10
	jp	LBB2_10
## BB#8:
	movl	-20(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	_mantissa
	fstpl	-64(%ebp)
	movsd	-64(%ebp), %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	LBB2_10
	jp	LBB2_10
## BB#9:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -16(%ebp)
	jmp	LBB2_14
LBB2_10:
	cmpl	$0, -48(%ebp)
	jl	LBB2_12
## BB#11:
	cmpl	$0, -44(%ebp)
	jne	LBB2_13
LBB2_12:
	movl	$0, %eax
	subl	-48(%ebp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	%esp, %eax
	movsd	%xmm0, 8(%eax)
	movl	-100(%ebp), %ecx        ## 4-byte Reload
	movsd	LCPI2_0-L2$pb(%ecx), %xmm0
	movsd	%xmm0, (%eax)
	calll	_pow
	fstpl	-80(%ebp)
	movsd	-80(%ebp), %xmm0
	movl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%ebp)
	jmp	LBB2_14
LBB2_13:
	cvtsi2sdl	-48(%ebp), %xmm0
	movl	%esp, %eax
	movsd	%xmm0, 8(%eax)
	movl	-100(%ebp), %ecx        ## 4-byte Reload
	movsd	LCPI2_0-L2$pb(%ecx), %xmm0
	movsd	%xmm0, (%eax)
	calll	_pow
	fstpl	-72(%ebp)
	movsd	-72(%ebp), %xmm0
	movsd	%xmm0, -16(%ebp)
LBB2_14:
	movsd	-16(%ebp), %xmm0
	movsd	%xmm0, -96(%ebp)
	fldl	-96(%ebp)
	addl	$116, %esp
	popl	%esi
	popl	%ebp
	ret

	.globl	_sign
	.align	4, 0x90
_sign:                                  ## @sign
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, -12(%ebp)
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %ecx
	subl	$1, %ecx
                                        ## kill: CL<def> ECX<kill>
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, -20(%ebp)
	cmpl	$1, -20(%ebp)
	jne	LBB3_2
## BB#1:
	movl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -8(%ebp)
	jmp	LBB3_3
LBB3_2:
	movl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -8(%ebp)
LBB3_3:
	movsd	-8(%ebp), %xmm0
	movsd	%xmm0, -32(%ebp)
	fldl	-32(%ebp)
	addl	$32, %esp
	popl	%ebp
	ret

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI4_0:
	.long	0                       ## double -1
	.long	3220176896
LCPI4_1:
	.long	0                       ## double +Inf
	.long	2146435072
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_customFloat
	.align	4, 0x90
_customFloat:                           ## @customFloat
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$116, %esp
	calll	L4$pb
L4$pb:
	popl	%eax
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %esi
	movl	%esi, -20(%ebp)
	movl	%edx, -24(%ebp)
	movl	%ecx, -28(%ebp)
	movl	-20(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %esi
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, -108(%ebp)        ## 4-byte Spill
	calll	_exponent
	fstpl	-96(%ebp)
	movsd	-96(%ebp), %xmm0
	movsd	%xmm0, -40(%ebp)
	movl	-20(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	_mantissa
	fstpl	-88(%ebp)
	movsd	-88(%ebp), %xmm0
	movsd	%xmm0, -48(%ebp)
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	_sign
	fstpl	-80(%ebp)
	movsd	-80(%ebp), %xmm0
	xorps	%xmm1, %xmm1
	movl	-108(%ebp), %eax        ## 4-byte Reload
	movsd	LCPI4_1-L4$pb(%eax), %xmm2
	movsd	%xmm0, -56(%ebp)
	movsd	%xmm2, -64(%ebp)
	movsd	LCPI4_0-L4$pb(%eax), %xmm0
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, -72(%ebp)
	movsd	-40(%ebp), %xmm0
	ucomisd	%xmm1, %xmm0
	jne	LBB4_3
	jp	LBB4_3
## BB#1:
	movsd	-40(%ebp), %xmm0
	ucomisd	-64(%ebp), %xmm0
	jne	LBB4_3
	jp	LBB4_3
## BB#2:
	movsd	-40(%ebp), %xmm0
	ucomisd	-72(%ebp), %xmm0
	jne	LBB4_3
	jp	LBB4_3
	jmp	LBB4_8
LBB4_3:
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	_is_normalized
	cmpl	$0, %eax
	je	LBB4_5
## BB#4:
	movl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-48(%ebp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%ebp)
LBB4_5:
	xorps	%xmm0, %xmm0
	movsd	-48(%ebp), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	LBB4_7
	jp	LBB4_7
## BB#6:
	movl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -48(%ebp)
LBB4_7:
	movsd	-56(%ebp), %xmm0
	mulsd	-40(%ebp), %xmm0
	mulsd	-48(%ebp), %xmm0
	movsd	%xmm0, -16(%ebp)
	jmp	LBB4_9
LBB4_8:
	movsd	-40(%ebp), %xmm0
	movsd	%xmm0, -16(%ebp)
LBB4_9:
	movsd	-16(%ebp), %xmm0
	movsd	%xmm0, -104(%ebp)
	fldl	-104(%ebp)
	addl	$116, %esp
	popl	%esi
	popl	%ebp
	ret


.subsections_via_symbols
