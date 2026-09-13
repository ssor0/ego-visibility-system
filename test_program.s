	.build_version macos,  13, 0
	.text
	.const
	.align 3
lC1:
	.long	1
	.long	12
	.text
	.align 1,0x90
	.globl __ada_test_program
__ada_test_program:
LFB1:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
LCFI2:
	movq	%rsp, -224(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	leaq	lC1(%rip), %rbx
	movl	$6, %edx
	movq	%rbx, %rsi
	movss	lC2(%rip), %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	$0, %eax
	movl	%ecx, -212(%rbp)
	cmovns	%ecx, %eax
	movl	%eax, %r14d
	movl	%eax, -240(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	movl	$6, %edx
	movq	%rbx, %rsi
	movss	lC2(%rip), %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, -228(%rbp)
	testl	%eax, %eax
	movl	$0, %r13d
	cmovns	%eax, %r13d
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	movl	$6, %edx
	movq	%rbx, %rsi
	movss	lC2(%rip), %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, -232(%rbp)
	testl	%eax, %eax
	movl	$0, %r12d
	cmovns	%eax, %r12d
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	movl	$6, %edx
	movq	%rbx, %rsi
	movss	lC2(%rip), %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, -236(%rbp)
	testl	%eax, %eax
	movl	$0, %ebx
	cmovns	%eax, %ebx
	movl	%r14d, %edx
	leal	(%r14,%r13), %r14d
	leal	(%r12,%r14), %ecx
	movl	%ecx, -216(%rbp)
	addl	%ebx, %ecx
	movl	%ecx, -244(%rbp)
	cmovne	%ecx, %eax
	movl	%eax, %r15d
	testl	%eax, %eax
	movl	$0, %eax
	cmovns	%r15d, %eax
	cltq
	addq	$15, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, -208(%rbp)
	cmpl	$0, -212(%rbp)
	jg	L21
L3:
	cmpl	$0, -228(%rbp)
	jle	L4
	movl	-240(%rbp), %esi
	cmpl	%r14d, %esi
	movl	$0, %eax
	cmovge	%eax, %r13d
	movslq	%esi, %rdi
	movq	-208(%rbp), %rax
	addq	%rax, %rdi
	movslq	%r13d, %rdx
	leaq	-160(%rbp), %rsi
	call	_memcpy
L4:
	cmpl	$0, -232(%rbp)
	jle	L6
	movl	-216(%rbp), %eax
	cmpl	%eax, %r14d
	movl	$0, %eax
	cmovge	%eax, %r12d
	movslq	%r14d, %rdi
	movq	-208(%rbp), %rax
	addq	%rax, %rdi
	movslq	%r12d, %rdx
	leaq	-144(%rbp), %rsi
	call	_memcpy
L6:
	cmpl	$0, -236(%rbp)
	jle	L8
	movl	-216(%rbp), %ecx
	movl	-244(%rbp), %eax
	cmpl	%eax, %ecx
	movl	$0, %eax
	cmovge	%eax, %ebx
	movslq	%ecx, %rdi
	movq	-208(%rbp), %rax
	addq	%rax, %rdi
	movslq	%ebx, %rdx
	leaq	-128(%rbp), %rsi
	call	_memcpy
L8:
	movl	$1, -192(%rbp)
	movl	%r15d, -188(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	movq	%rdx, %rsi
	call	_ada__text_io__put_line__2
	movq	-224(%rbp), %rsp
	movl	$1065353216, %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	leaq	lC1(%rip), %rbx
	movaps	%xmm1, -208(%rbp)
	movss	-208(%rbp), %xmm0
	movl	$6, %edx
	movq	%rbx, %rsi
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %edx
	testl	%eax, %eax
	movl	$0, %eax
	movl	%edx, -212(%rbp)
	cmovns	%edx, %eax
	movl	%eax, %r15d
	movl	%eax, -236(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	movdqa	-208(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	shufps	$85, -208(%rbp), %xmm0
	movl	$6, %edx
	movq	%rbx, %rsi
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, -224(%rbp)
	testl	%eax, %eax
	movl	$0, %r13d
	cmovns	%eax, %r13d
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	movdqa	-208(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	unpckhps	-208(%rbp), %xmm0
	movl	$6, %edx
	movq	%rbx, %rsi
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, -228(%rbp)
	testl	%eax, %eax
	movl	$0, %r12d
	cmovns	%eax, %r12d
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	movdqa	-208(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	shufps	$255, %xmm1, %xmm0
	movl	$6, %edx
	movq	%rbx, %rsi
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, -232(%rbp)
	testl	%eax, %eax
	movl	$0, %ebx
	cmovns	%eax, %ebx
	movl	%r15d, %esi
	leal	(%r15,%r13), %r14d
	leal	(%r12,%r14), %ecx
	movl	%ecx, -216(%rbp)
	addl	%ebx, %ecx
	movl	%ecx, -240(%rbp)
	cmovne	%ecx, %eax
	movl	%eax, %r15d
	testl	%eax, %eax
	movl	$0, %eax
	cmovns	%r15d, %eax
	cltq
	addq	$15, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %rdi
	movq	%rsp, -208(%rbp)
	cmpl	$0, -212(%rbp)
	jg	L22
L11:
	cmpl	$0, -224(%rbp)
	jle	L12
	movl	-236(%rbp), %esi
	cmpl	%r14d, %esi
	movl	$0, %eax
	cmovge	%eax, %r13d
	movslq	%esi, %rdi
	movq	-208(%rbp), %rax
	addq	%rax, %rdi
	movslq	%r13d, %rdx
	leaq	-96(%rbp), %rsi
	call	_memcpy
L12:
	cmpl	$0, -228(%rbp)
	jle	L14
	movl	-216(%rbp), %eax
	cmpl	%eax, %r14d
	movl	$0, %eax
	cmovge	%eax, %r12d
	movslq	%r14d, %rdi
	movq	-208(%rbp), %rax
	addq	%rax, %rdi
	movslq	%r12d, %rdx
	leaq	-80(%rbp), %rsi
	call	_memcpy
L14:
	cmpl	$0, -232(%rbp)
	jle	L16
	movl	-216(%rbp), %edx
	movl	-240(%rbp), %eax
	cmpl	%eax, %edx
	movl	$0, %eax
	cmovge	%eax, %ebx
	movslq	%edx, %rdi
	movq	-208(%rbp), %rax
	addq	%rax, %rdi
	movslq	%ebx, %rdx
	leaq	-64(%rbp), %rsi
	call	_memcpy
L16:
	movl	$1, -184(%rbp)
	movl	%r15d, -180(%rbp)
	leaq	-184(%rbp), %rax
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	movq	%rdx, %rsi
	call	_ada__text_io__put_line__2
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI3:
	ret
L21:
LCFI4:
	movq	%rsp, %rdi
	movslq	%edx, %rdx
	leaq	-176(%rbp), %rsi
	call	_memcpy
	jmp	L3
L22:
	movslq	%esi, %rdx
	leaq	-112(%rbp), %rsi
	call	_memcpy
	jmp	L11
LFE1:
	.literal4
	.align 2
lC2:
	.long	1065353216
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x10
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB1-.
	.set L$set$2,LFE1-LFB1
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB1
	.long L$set$3
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x8f
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xa
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xb
	.align 3
LEFDE1:
	.ident	"GCC: (GNU) 14.1.0"
	.subsections_via_symbols
