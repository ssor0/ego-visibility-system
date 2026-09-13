	.build_version macos,  13, 0
	.text
	.const
lC32:
	.ascii "view_cell_read_test.adb"
	.space 1
lC36:
	.ascii "bl"
lC37:
	.ascii "b"
lC38:
	.ascii "a"
lC39:
	.ascii "file is first arg"
lC40:
	.ascii "\" does not exist"
lC41:
	.ascii "file \""
lC42:
	.space	1
lC43:
	.ascii "view cell count:"
	.align 3
lC44:
	.ascii "number of view cells greater than statically sized array"
	.align 3
lC45:
	.ascii "file index after vc read (should be same as pvs list offset):"
lC46:
	.ascii "press any key to exit"
lC49:
	.ascii "issue, reached r limit"
lC50:
	.ascii " times"
lC51:
	.ascii "called"
	.align 3
lC52:
	.ascii "_________________________________"
lC53:
	.ascii "entered new view cell"
lC54:
	.ascii "pvs_offset:"
lC55:
	.ascii "trace p_pos: "
	.align 3
lC0:
	.long	1
	.long	40
	.align 3
lC1:
	.long	1
	.long	2
	.align 3
lC2:
	.long	1
	.long	42
	.align 3
lC3:
	.long	1
	.long	1
	.align 3
lC4:
	.long	1
	.long	12
lC5:
	.byte	10
	.align 3
lC6:
	.long	1
	.long	17
	.align 3
lC7:
	.long	1
	.long	16
	.align 3
lC8:
	.long	1
	.long	6
	.align 3
lC9:
	.long	1
	.long	0
	.align 3
lC10:
	.long	1
	.long	11
	.align 3
lC11:
	.long	1
	.long	27
	.align 3
lC12:
	.long	1
	.long	56
	.align 3
lC13:
	.long	1
	.long	20
	.align 3
lC14:
	.long	1
	.long	61
	.align 3
lC15:
	.long	1
	.long	81
	.align 3
lC16:
	.long	1
	.long	21
	.align 3
lC17:
	.long	1
	.long	22
	.align 3
lC18:
	.long	1
	.long	23
	.align 3
lC19:
	.long	1
	.long	33
	.align 3
lC20:
	.long	1
	.long	13
	.text
	.align 1,0x90
	.globl __ada_view_cell_read_test
__ada_view_cell_read_test:
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
LEHB0:
	subq	$67192, %rsp
LEHE0:
LCFI2:
	leaq	16(%rbp), %rax
	movq	%rax, -776(%rbp)
	movl	$0, %eax
	movl	%eax, -61920(%rbp)
	movdqa	_in_vec.56(%rip), %xmm0
	psrldq	$12, %xmm0
	movaps	%xmm0, -512(%rbp)
	movss	lC31(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movl	$1, %eax
LEHB1:
	xchgb	_no_leaf_errorF.55(%rip), %al
	xorl	$1, %eax
	testb	%al, %al
	je	L3
	leaq	_view_cell_read_test__no_leaf_error.54(%rip), %rax
	movq	%rax, %rdi
	call	_system__exception_table__register_exception
L3:
	movl	$0, %eax
	movl	%eax, -60912(%rbp)
	movl	$0, %eax
	movl	%eax, -60916(%rbp)
	movb	$0, -63080(%rbp)
	movzbl	-63080(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_gnat__sockets__sock_addr_typeD3
	testb	%al, %al
	je	L4
	movl	$892, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Discriminant_Check
L4:
	movl	$0, %ecx
	movl	$0, %eax
	movb	$127, %al
	andl	$16777215, %eax
	orl	$16777216, %eax
	movl	%eax, %eax
	salq	$8, %rax
	movq	%rax, %rdx
	movabsq	$-1099511627521, %rax
	andq	%rcx, %rax
	orq	%rdx, %rax
	movl	$0, %ecx
	movl	$0, %eax
	movb	$127, %al
	andl	$16777215, %eax
	orl	$16777216, %eax
	movl	%eax, %eax
	salq	$8, %rax
	movq	%rax, %rdx
	movabsq	$-1099511627521, %rax
	andq	%rcx, %rax
	orq	%rdx, %rax
	movq	%rax, %rcx
	movq	%rcx, %rax
	salq	$24, %rax
	sarq	$24, %rax
	movq	%rax, -66104(%rbp)
	movl	-66104(%rbp), %eax
	movl	%eax, -63072(%rbp)
	movzbl	-66100(%rbp), %eax
	movb	%al, -63068(%rbp)
	movzbl	-63080(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_gnat__sockets__sock_addr_typeD3
	testb	%al, %al
	je	L5
	movl	$892, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Discriminant_Check
LEHE1:
L5:
	movl	$20777, -63064(%rbp)
	movl	$1, %eax
	movl	%eax, -61920(%rbp)
	movq	_system__soft_links__abort_defer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
LEHB2:
	call	*%rax
	leaq	-65696(%rbp), %rax
	addq	$2640, %rax
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	_udp_streams__udp_stream_typeIP
LEHE2:
	leaq	-65696(%rbp), %rax
	addq	$2640, %rax
	movq	%rax, %rdi
LEHB3:
	call	_udp_streams__udp_stream_typeDI
LEHE3:
	movl	$2, %eax
	movl	%eax, -61920(%rbp)
	movl	$1, %ebx
L93:
LEHB4:
	call	_system__standard_library__abort_undefer_direct
	cmpl	$1, %ebx
	jne	L6
	nop
	movl	$1, -704(%rbp)
	movl	$24, -700(%rbp)
	movabsq	$8011749197280924975, %rax
	movq	%rax, -696(%rbp)
	movabsq	$3762246647076190067, %rax
	movq	%rax, -688(%rbp)
	movabsq	$8530230210503996521, %rax
	movq	%rax, -680(%rbp)
	leaq	-704(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
	leaq	-704(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -720(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, -712(%rbp)
	movq	$0, -728(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -52(%rbp)
	movss	lC34(%rip), %xmm0
	shufps	$0, %xmm0, %xmm0
	movaps	%xmm0, -752(%rbp)
	movaps	lC35(%rip), %xmm0
	movaps	%xmm0, -128(%rbp)
	leaq	-66096(%rbp), %rax
	movq	%rax, -67088(%rbp)
	leaq	lC0(%rip), %rax
	movq	%rax, -67080(%rbp)
	movabsq	$17179869184, %rax
	movl	$0, %esi
	movq	-67088(%rbp), %rdx
	movq	-67080(%rbp), %rcx
	movq	%rax, %rdi
	call	_system__img_llli__impl__image_integer
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	2(%rax), %ebx
	leaq	-66096(%rbp), %rax
	movq	%rax, -67072(%rbp)
	movl	$1, -496(%rbp)
	movl	%edx, -492(%rbp)
	leaq	-496(%rbp), %rax
	movq	%rax, -67064(%rbp)
	leaq	lC36(%rip), %rax
	movq	%rax, -67056(%rbp)
	leaq	lC1(%rip), %rax
	movq	%rax, -67048(%rbp)
	leaq	-66048(%rbp), %rax
	movq	%rax, %r12
	leaq	lC2(%rip), %r13
	movq	%r12, %rsi
	movq	%r13, %rax
	movq	-67072(%rbp), %r8
	movq	-67064(%rbp), %r9
	movq	-67056(%rbp), %rdx
	movq	-67048(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$42, %ebx
	jle	L7
	movl	$940, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L7:
	leaq	-66048(%rbp), %rax
	movq	%rax, -67040(%rbp)
	movl	$1, -488(%rbp)
	movl	%ebx, -484(%rbp)
	leaq	-488(%rbp), %rax
	movq	%rax, -67032(%rbp)
	movq	-67040(%rbp), %rcx
	movq	-67032(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
LEHE4:
	leaq	-63104(%rbp), %rax
	movq	%rax, %rdi
LEHB5:
	call	_system__secondary_stack__ss_mark
	movaps	_in_vec.56(%rip), %xmm0
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
	call	_view_cell_read_test__v4t_image.35
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	%r13, %rax
	movl	4(%rax), %edx
	movq	%r13, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	L8
	movq	%r13, %rax
	movl	4(%rax), %edx
	movq	%r13, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	jmp	L9
L8:
	movl	$0, %eax
L9:
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	cltq
	movq	%rax, -144(%rbp)
	movl	-132(%rbp), %eax
	cltq
	movl	$1, %esi
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_allocate
	movq	%rax, %rbx
	movq	%rbx, -152(%rbp)
	leaq	lC37(%rip), %rax
	movq	%rax, -67024(%rbp)
	leaq	lC3(%rip), %rax
	movq	%rax, -67016(%rbp)
	movq	%rbx, -67008(%rbp)
	movl	$1, -480(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -476(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, -67000(%rbp)
	movq	-67008(%rbp), %rax
	movq	-67000(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	%r12, %r8
	movq	%r13, %r9
	movq	-67024(%rbp), %rdx
	movq	-67016(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	movq	%rbx, -66992(%rbp)
	movl	$1, -472(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -468(%rbp)
	leaq	-472(%rbp), %rax
	movq	%rax, -66984(%rbp)
	movq	-66992(%rbp), %rcx
	movq	-66984(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
LEHE5:
	movl	$1, %ebx
L96:
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
LEHB6:
	call	_view_cell_read_test__B719b___finalizer.0
LEHE6:
	cmpl	$1, %ebx
	jne	L10
	movl	$1, %eax
L98:
	cmpl	$1, %eax
	jne	L11
	nop
	leaq	-63128(%rbp), %rax
	movq	%rax, %rdi
LEHB7:
	call	_system__secondary_stack__ss_mark
	movaps	-512(%rbp), %xmm0
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
	call	_view_cell_read_test__v4t_image.35
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	%r13, %rax
	movl	4(%rax), %edx
	movq	%r13, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	L12
	movq	%r13, %rax
	movl	4(%rax), %edx
	movq	%r13, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
	cltq
	movq	%rax, -168(%rbp)
	movl	-156(%rbp), %eax
	cltq
	movl	$1, %esi
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_allocate
	movq	%rax, %rbx
	movq	%rbx, -176(%rbp)
	leaq	lC38(%rip), %rax
	movq	%rax, -66976(%rbp)
	leaq	lC3(%rip), %rax
	movq	%rax, -66968(%rbp)
	movq	%rbx, -66960(%rbp)
	movl	$1, -464(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, -460(%rbp)
	leaq	-464(%rbp), %rax
	movq	%rax, -66952(%rbp)
	movq	-66960(%rbp), %rax
	movq	-66952(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	%r12, %r8
	movq	%r13, %r9
	movq	-66976(%rbp), %rdx
	movq	-66968(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	movq	%rbx, -66944(%rbp)
	movl	$1, -456(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, -452(%rbp)
	leaq	-456(%rbp), %rax
	movq	%rax, -66936(%rbp)
	movq	-66944(%rbp), %rcx
	movq	-66936(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
LEHE7:
	movl	$1, %ebx
L100:
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
LEHB8:
	call	_view_cell_read_test__B732b___finalizer.1
LEHE8:
	cmpl	$1, %ebx
	jne	L14
	movl	$1, %eax
L102:
	cmpl	$1, %eax
	jne	L15
	nop
	movaps	-752(%rbp), %xmm0
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
	movl	$3, %edi
LEHB9:
	call	_view_cell_read_test__pslldq.2
LEHE9:
	movaps	%xmm0, -752(%rbp)
	movq	%rsp, %rax
	movq	%rax, %r14
	leaq	-65712(%rbp), %rax
	movq	%rax, -66928(%rbp)
	leaq	lC4(%rip), %r15
	movq	%r15, -66920(%rbp)
	movl	-752(%rbp), %eax
	movq	-66928(%rbp), %rcx
	movq	-66920(%rbp), %rbx
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
LEHB10:
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %r13d
	leaq	-65728(%rbp), %rax
	movq	%rax, -66912(%rbp)
	movq	%r15, -66904(%rbp)
	movl	-748(%rbp), %eax
	movq	-66912(%rbp), %rcx
	movq	-66904(%rbp), %rbx
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %r12d
	leaq	-65744(%rbp), %rax
	movq	%rax, -66896(%rbp)
	movq	%r15, -66888(%rbp)
	movl	-744(%rbp), %eax
	movq	-66896(%rbp), %rcx
	movq	-66888(%rbp), %rbx
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %ebx
	leaq	-65760(%rbp), %rax
	movq	%rax, -66880(%rbp)
	movq	%r15, -66872(%rbp)
	movl	-740(%rbp), %eax
	movq	-66880(%rbp), %rdx
	movq	-66872(%rbp), %rcx
	movq	%rdx, %rsi
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
LEHE10:
	movl	%eax, %esi
	movl	$0, %eax
	testl	%r13d, %r13d
	cmovns	%r13d, %eax
	leal	1(%rax), %edx
	movl	$0, %eax
	testl	%r12d, %r12d
	cmovns	%r12d, %eax
	addl	%edx, %eax
	leal	1(%rax), %edx
	movl	$0, %eax
	testl	%ebx, %ebx
	cmovns	%ebx, %eax
	addl	%edx, %eax
	leal	1(%rax), %edx
	movl	$0, %eax
	testl	%esi, %esi
	cmovns	%esi, %eax
	addl	%edx, %eax
	movl	$1, -180(%rbp)
	movl	%eax, -184(%rbp)
	movl	-184(%rbp), %eax
	cltq
	movq	%rax, -192(%rbp)
	movl	-184(%rbp), %eax
	movslq	%eax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
LEHB11:
	divq	%rdi
LEHE11:
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	%rax, -200(%rbp)
	leaq	-65760(%rbp), %rax
	movq	%rax, -66864(%rbp)
	movl	$1, -448(%rbp)
	movl	%esi, -444(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, -66856(%rbp)
	leaq	lC5(%rip), %rdi
	movq	%rdi, -66848(%rbp)
	leaq	lC3(%rip), %rcx
	movq	%rcx, -66840(%rbp)
	leaq	-65744(%rbp), %rax
	movq	%rax, -66832(%rbp)
	movl	$1, -440(%rbp)
	movl	%ebx, -436(%rbp)
	leaq	-440(%rbp), %rax
	movq	%rax, -66824(%rbp)
	movq	%rdi, -66816(%rbp)
	movq	%rcx, -66808(%rbp)
	leaq	-65728(%rbp), %rax
	movq	%rax, -66800(%rbp)
	movl	$1, -432(%rbp)
	movl	%r12d, -428(%rbp)
	leaq	-432(%rbp), %rax
	movq	%rax, -66792(%rbp)
	movq	%rdi, -66784(%rbp)
	movq	%rcx, -66776(%rbp)
	leaq	-65712(%rbp), %rax
	movq	%rax, -66768(%rbp)
	movl	$1, -424(%rbp)
	movl	%r13d, -420(%rbp)
	leaq	-424(%rbp), %rax
	movq	%rax, -66760(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -66752(%rbp)
	movl	$1, -416(%rbp)
	movl	-184(%rbp), %eax
	movl	%eax, -412(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, -66744(%rbp)
	movq	-66752(%rbp), %rax
	movq	-66744(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	pushq	-66856(%rbp)
	pushq	-66864(%rbp)
	pushq	-66840(%rbp)
	pushq	-66848(%rbp)
	pushq	-66824(%rbp)
	pushq	-66832(%rbp)
	pushq	-66808(%rbp)
	pushq	-66816(%rbp)
	pushq	-66792(%rbp)
	pushq	-66800(%rbp)
	movq	-66784(%rbp), %r8
	movq	-66776(%rbp), %r9
	movq	-66768(%rbp), %rdx
	movq	-66760(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
LEHB12:
LCFI3:
	call	_system__concat_7__str_concat_7
	addq	$80, %rsp
	movq	-200(%rbp), %rax
	movq	%rax, -66736(%rbp)
	movl	$1, -408(%rbp)
	movl	-184(%rbp), %eax
	movl	%eax, -404(%rbp)
	leaq	-408(%rbp), %rax
	movq	%rax, -66728(%rbp)
	movq	-66736(%rbp), %rcx
	movq	-66728(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
LCFI4:
	call	_ada__text_io__put_line__2
LEHE12:
LEHB13:
LEHE13:
	movq	%r14, %rsp
LEHB14:
	call	_ada__command_line__argument_count
	testl	%eax, %eax
	jg	L16
	leaq	lC39(%rip), %rax
	movq	%rax, -66720(%rbp)
	leaq	lC6(%rip), %rax
	movq	%rax, -66712(%rbp)
	movq	-66720(%rbp), %rcx
	movq	-66712(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
LEHE14:
	movl	$0, %ebx
	jmp	L17
L16:
	leaq	-63152(%rbp), %rax
	movq	%rax, %rdi
LEHB15:
	call	_system__secondary_stack__ss_mark
	movl	$1, %edi
	call	_ada__command_line__argument
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	_ada__directories__exists
	xorl	$1, %eax
	testb	%al, %al
	jne	L18
	movl	$1, %edi
	call	_ada__command_line__argument
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	_ada__directories__kind
LEHE15:
	testb	%al, %al
	sete	%al
	testb	%al, %al
	je	L19
L18:
	movb	$1, -66113(%rbp)
	jmp	L20
L19:
	movb	$0, -66113(%rbp)
L20:
	movl	$1, %ebx
L105:
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
LEHB16:
	call	_view_cell_read_test__B818b___finalizer.3
LEHE16:
	cmpl	$1, %ebx
	jne	L21
	movl	$1, %eax
L107:
	cmpl	$1, %eax
	jne	L22
	nop
	cmpb	$0, -66113(%rbp)
	je	L23
	leaq	-63176(%rbp), %rax
	movq	%rax, %rdi
LEHB17:
	call	_system__secondary_stack__ss_mark
	movl	$1, %edi
	call	_ada__command_line__argument
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	%r13, %rax
	movl	4(%rax), %edx
	movq	%r13, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	L24
	movq	%r13, %rax
	movl	4(%rax), %edx
	movq	%r13, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	jmp	L25
L24:
	movl	$0, %eax
L25:
	addl	$6, %eax
	addl	$16, %eax
	movl	%eax, -264(%rbp)
	movl	-264(%rbp), %eax
	cltq
	movq	%rax, -272(%rbp)
	movl	-264(%rbp), %eax
	cltq
	movl	$1, %esi
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_allocate
	movq	%rax, %rbx
	movq	%rbx, -280(%rbp)
	leaq	lC40(%rip), %rax
	movq	%rax, -66704(%rbp)
	leaq	lC7(%rip), %rax
	movq	%rax, -66696(%rbp)
	leaq	lC41(%rip), %rax
	movq	%rax, -66688(%rbp)
	leaq	lC8(%rip), %rax
	movq	%rax, -66680(%rbp)
	movq	%rbx, -66672(%rbp)
	movl	$1, -400(%rbp)
	movl	-264(%rbp), %eax
	movl	%eax, -396(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, -66664(%rbp)
	movq	-66672(%rbp), %rax
	movq	-66664(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	pushq	-66696(%rbp)
	pushq	-66704(%rbp)
	movq	%r12, %r8
	movq	%r13, %r9
	movq	-66688(%rbp), %rdx
	movq	-66680(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
LCFI5:
	call	_system__concat_3__str_concat_3
	addq	$16, %rsp
	movq	%rbx, -66656(%rbp)
	movl	$1, -392(%rbp)
	movl	-264(%rbp), %eax
	movl	%eax, -388(%rbp)
	leaq	-392(%rbp), %rax
	movq	%rax, -66648(%rbp)
	movq	-66656(%rbp), %rcx
	movq	-66648(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
LCFI6:
	call	_ada__text_io__put_line__2
LEHE17:
	movl	$1, %ebx
L109:
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
LEHB18:
	call	_view_cell_read_test__B824b___finalizer.4
LEHE18:
	cmpl	$1, %ebx
	jne	L26
	movl	$1, %eax
L111:
	cmpl	$1, %eax
	jne	L27
	nop
	movl	$0, %ebx
	jmp	L17
L23:
	leaq	-63200(%rbp), %rax
	movq	%rax, %rdi
LEHB19:
	call	_system__secondary_stack__ss_mark
	leaq	lC42(%rip), %rax
	movq	%rax, -66640(%rbp)
	leaq	lC9(%rip), %rax
	movq	%rax, -66632(%rbp)
	movl	$1, %edi
	call	_ada__command_line__argument
	movq	-728(%rbp), %rdi
	movq	-66640(%rbp), %r8
	movq	-66632(%rbp), %r9
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	_ada__streams__stream_io__open
LEHE19:
	movq	%rax, -728(%rbp)
	movl	$1, %ebx
L113:
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
LEHB20:
	call	_view_cell_read_test__B840b___finalizer.5
LEHE20:
	cmpl	$1, %ebx
	jne	L28
	movl	$1, %eax
L115:
	cmpl	$1, %eax
	jne	L29
	nop
	movq	-728(%rbp), %rax
	movq	%rax, %rdi
LEHB21:
	call	_ada__streams__stream_io__stream
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	L30
	movl	$988, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Access_Check
L30:
	leaq	-65696(%rbp), %rax
	leaq	4788(%rax), %rsi
	movq	-104(%rbp), %rcx
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
	movl	$0, %edx
	movq	%rcx, %rdi
	call	_view_cell_read_test__header_843SR.6
	leaq	-65776(%rbp), %rax
	movq	%rax, -66624(%rbp)
	leaq	lC10(%rip), %rax
	movq	%rax, -66616(%rbp)
	movl	-60904(%rbp), %ecx
	movq	-66624(%rbp), %rbx
	movq	-66616(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	16(%rax), %ebx
	leaq	-65776(%rbp), %rax
	movq	%rax, -66608(%rbp)
	movl	$1, -384(%rbp)
	movl	%edx, -380(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -66600(%rbp)
	leaq	lC43(%rip), %rax
	movq	%rax, -66592(%rbp)
	leaq	lC7(%rip), %rax
	movq	%rax, -66584(%rbp)
	leaq	-65808(%rbp), %rax
	movq	%rax, -66576(%rbp)
	leaq	lC11(%rip), %rax
	movq	%rax, -66568(%rbp)
	movq	-66576(%rbp), %rax
	movq	-66568(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-66608(%rbp), %r8
	movq	-66600(%rbp), %r9
	movq	-66592(%rbp), %rdx
	movq	-66584(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$27, %ebx
	jle	L31
	movl	$996, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L31:
	leaq	-65808(%rbp), %rax
	movq	%rax, -66560(%rbp)
	movl	$1, -376(%rbp)
	movl	%ebx, -372(%rbp)
	leaq	-376(%rbp), %rax
	movq	%rax, -66552(%rbp)
	movq	-66560(%rbp), %rcx
	movq	-66552(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	movl	-60904(%rbp), %eax
	cmpl	$10000, %eax
	jbe	L32
	leaq	lC44(%rip), %rax
	movq	%rax, -66544(%rbp)
	leaq	lC12(%rip), %rax
	movq	%rax, -66536(%rbp)
	movq	-66544(%rbp), %rcx
	movq	-66536(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	movl	$0, %ebx
	jmp	L17
L32:
	movl	-60904(%rbp), %eax
	movl	%eax, -204(%rbp)
	cmpl	$0, -204(%rbp)
	je	L33
	movl	$1, -56(%rbp)
L37:
	cmpl	$10000, -56(%rbp)
	jbe	L34
	movl	$1034, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L34:
	movl	-56(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	-6(%rax), %rdx
	leaq	-65696(%rbp), %rax
	addq	$4916, %rax
	addq	%rdx, %rax
	movq	%rax, -216(%rbp)
	cmpq	$0, -104(%rbp)
	jne	L35
	movl	$1036, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Access_Check
L35:
	movq	-216(%rbp), %rbx
	movq	-104(%rbp), %rdx
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
	movl	$0, %esi
	movq	%rdx, %rdi
	call	_view_cell_read_test__B_10__vc_buf_type_879SR.9
	movq	%rax, %rdx
	movw	%dx, (%rbx)
	movq	%rdx, %rax
	shrq	$16, %rax
	andb	$-1, %ah
	movw	%ax, 2(%rbx)
	movq	%rdx, %rax
	shrq	$32, %rax
	andb	$-1, %ah
	movw	%ax, 4(%rbx)
	cmpl	$10000, -56(%rbp)
	jbe	L36
	movl	$1038, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L36:
	movl	-56(%rbp), %ebx
	movq	-104(%rbp), %rdx
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
	movl	$0, %esi
	movq	%rdx, %rdi
	call	_view_cell_read_test__L_9__view_cell_node_884SR.10
	movq	%rax, %rdx
	movw	%dx, -368(%rbp)
	movq	%rdx, %rax
	shrq	$16, %rax
	andb	$-1, %ah
	movw	%ax, -366(%rbp)
	movq	%rdx, %rax
	shrq	$32, %rax
	andb	$-1, %ah
	movw	%ax, -364(%rbp)
	movl	%ebx, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	-48(%rax), %rax
	addq	%rbp, %rax
	leaq	-60742(%rax), %rdx
	movzwl	-368(%rbp), %ecx
	movzwl	4(%rdx), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movw	%ax, 4(%rdx)
	movzwl	-366(%rbp), %ecx
	movzwl	6(%rdx), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movw	%ax, 6(%rdx)
	movzwl	-364(%rbp), %ecx
	movzwl	8(%rdx), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movw	%ax, 8(%rdx)
	movl	-56(%rbp), %eax
	cmpl	-204(%rbp), %eax
	je	L33
	addl	$1, -56(%rbp)
	jmp	L37
L33:
	leaq	-65840(%rbp), %rax
	movq	%rax, -66528(%rbp)
	leaq	lC13(%rip), %rax
	movq	%rax, -66520(%rbp)
	movq	-728(%rbp), %rax
	movq	%rax, %rdi
	call	_ada__streams__stream_io__index
	leaq	-1(%rax), %rcx
	movq	-66528(%rbp), %rbx
	movq	-66520(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_system__img_lli__impl__image_integer
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	61(%rax), %ebx
	leaq	-65840(%rbp), %rax
	movq	%rax, -66512(%rbp)
	movl	$1, -360(%rbp)
	movl	%edx, -356(%rbp)
	leaq	-360(%rbp), %rax
	movq	%rax, -66504(%rbp)
	leaq	lC45(%rip), %rax
	movq	%rax, -66496(%rbp)
	leaq	lC14(%rip), %rax
	movq	%rax, -66488(%rbp)
	leaq	-66048(%rbp), %rax
	movq	%rax, -66480(%rbp)
	leaq	lC15(%rip), %rax
	movq	%rax, -66472(%rbp)
	movq	-66480(%rbp), %rax
	movq	-66472(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-66512(%rbp), %r8
	movq	-66504(%rbp), %r9
	movq	-66496(%rbp), %rdx
	movq	-66488(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$81, %ebx
	jle	L38
	movl	$1043, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L38:
	leaq	-66048(%rbp), %rax
	movq	%rax, -66464(%rbp)
	movl	$1, -352(%rbp)
	movl	%ebx, -348(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, -66456(%rbp)
	movq	-66464(%rbp), %rcx
	movq	-66456(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	leaq	-728(%rbp), %rax
	movq	%rax, %rdi
	call	_ada__streams__stream_io__close
	call	_ada__command_line__argument_count
	movl	%eax, -220(%rbp)
	cmpl	$0, -220(%rbp)
	jns	L39
	movl	$1047, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Invalid_Data
LEHE21:
L39:
	movl	$1, -60(%rbp)
L55:
	movl	-220(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jle	L40
	addl	$1, -60(%rbp)
	leaq	-63224(%rbp), %rax
	movq	%rax, %rdi
LEHB22:
	call	_system__secondary_stack__ss_mark
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	_ada__command_line__argument
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rbx, %rax
	movl	4(%rax), %edx
	movq	%rbx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	movq	%rbx, %rax
	movl	4(%rax), %edx
	movq	%rbx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	cmpl	$3, %edx
	jne	L43
	movq	%rcx, %rax
	movl	(%rax), %eax
LEHE22:
	cmpl	$1954051117, %eax
	jne	L43
	movb	$1, -66114(%rbp)
	jmp	L44
L43:
	movb	$0, -66114(%rbp)
L44:
	movl	$1, %ebx
L117:
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
LEHB23:
	call	_view_cell_read_test__L_11__B905b___finalizer.11
LEHE23:
	cmpl	$1, %ebx
	jne	L45
	movl	$1, %eax
L119:
	cmpl	$1, %eax
	jne	L46
	nop
	cmpb	$0, -66114(%rbp)
	je	L47
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
LEHB24:
	call	_view_cell_read_test__nodes_to_txt.12
LEHE24:
	movl	$0, %ebx
	jmp	L17
L47:
	leaq	-63248(%rbp), %rax
	movq	%rax, %rdi
LEHB25:
	call	_system__secondary_stack__ss_mark
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	_ada__command_line__argument
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rbx, %rax
	movl	4(%rax), %edx
	movq	%rbx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	movq	%rbx, %rax
	movl	4(%rax), %edx
	movq	%rbx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	cmpl	$3, %edx
	jne	L50
	movq	%rcx, %rax
	movl	(%rax), %eax
LEHE25:
	cmpl	$1784835885, %eax
	jne	L50
	movb	$1, -66115(%rbp)
	jmp	L51
L50:
	movb	$0, -66115(%rbp)
L51:
	movl	$1, %ebx
L121:
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
LEHB26:
	call	_view_cell_read_test__L_11__B910b___finalizer.13
LEHE26:
	cmpl	$1, %ebx
	jne	L52
	movl	$1, %eax
L123:
	cmpl	$1, %eax
	jne	L53
	nop
	cmpb	$0, -66115(%rbp)
	je	L55
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
LEHB27:
	call	_view_cell_read_test__nodes_to_obj.14
	movl	$0, %ebx
	jmp	L17
L40:
	movl	$1, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	_gnat__sockets__create_socket
	movl	%eax, -224(%rbp)
	leaq	-65696(%rbp), %rax
	leaq	2616(%rax), %rdx
	movl	-224(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gnat__sockets__bind_socket
LEHE27:
	leaq	-63272(%rbp), %rax
	movq	%rax, %rdi
LEHB28:
	call	_system__secondary_stack__ss_mark
	leaq	-65696(%rbp), %rax
	addq	$2616, %rax
	movq	%rax, %rdi
	call	_gnat__sockets__image__3
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
LEHE28:
	movl	$1, %ebx
L125:
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
LEHB29:
	call	_view_cell_read_test__B915b___finalizer.28
LEHE29:
	cmpl	$1, %ebx
	jne	L56
	movl	$1, %eax
L127:
	cmpl	$1, %eax
	jne	L57
	nop
	leaq	lC46(%rip), %rax
	movq	%rax, -66448(%rbp)
	leaq	lC16(%rip), %rax
	movq	%rax, -66440(%rbp)
	movq	-66448(%rbp), %rcx
	movq	-66440(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
LEHB30:
	call	_ada__text_io__put_line__2
	movl	-224(%rbp), %edx
	leaq	-65696(%rbp), %rax
	addq	$2640, %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_udp_streams__set_socket
L85:
	leaq	-672(%rbp), %rsi
	leaq	-65696(%rbp), %rax
	leaq	2640(%rax), %rcx
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
	movl	$1, %edx
	movq	%rcx, %rdi
	call	_view_cell_read_test__L_12__telemetry_format_1_920SR.29
	leaq	-65696(%rbp), %rax
	addq	$2640, %rax
	movq	%rax, %rdi
	call	_udp_streams__data_available
	xorl	$1, %eax
	testb	%al, %al
	je	L58
	movl	$500000000, %edi
	call	_ada__calendar__delays__delay_for
	call	_ada__text_io__get_immediate__4
	movb	%al, -257(%rbp)
	movzbl	%ah, %eax
	movb	%al, -258(%rbp)
	cmpb	$0, -258(%rbp)
	jne	L59
	jmp	L60
L58:
	movss	-652(%rbp), %xmm1
	movss	lC47(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -652(%rbp)
	movss	-656(%rbp), %xmm0
	movss	-652(%rbp), %xmm1
	movss	-648(%rbp), %xmm3
	pxor	%xmm2, %xmm2
	unpcklps	%xmm2, %xmm3
	unpcklps	%xmm1, %xmm0
	movlhps	%xmm3, %xmm0
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
	movl	$0, %esi
	movl	-60780(%rbp), %edx
	movzwl	-60776(%rbp), %eax
	salq	$32, %rax
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	_view_cell_read_test__findviewcell.30
	movq	%rax, %rdx
	movw	%dx, -344(%rbp)
	movq	%rdx, %rax
	shrq	$16, %rax
	andb	$-1, %ah
	movw	%ax, -342(%rbp)
	movq	%rdx, %rax
	shrq	$32, %rax
	andb	$-1, %ah
	movw	%ax, -340(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -760(%rbp)
	movl	-60912(%rbp), %eax
	cmpl	$49, %eax
	jne	L61
	leaq	lC49(%rip), %rax
	movq	%rax, -66432(%rbp)
	leaq	lC17(%rip), %rax
	movq	%rax, -66424(%rbp)
	movq	-66432(%rbp), %rcx
	movq	-66424(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
	call	_view_cell_read_test__handle_r_limit.33
	movl	$0, %ebx
	jmp	L17
L61:
	movzwl	-758(%rbp), %eax
	movzwl	%ax, %edx
	movzbl	-756(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%edx, %eax
	movl	%eax, -228(%rbp)
	movl	-228(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	L62
	leaq	-65856(%rbp), %rax
	movq	%rax, -66416(%rbp)
	leaq	lC10(%rip), %rax
	movq	%rax, -66408(%rbp)
	movl	-60912(%rbp), %ecx
	movq	-66416(%rbp), %rsi
	movq	-66408(%rbp), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	_system__img_int__impl__image_integer
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	addl	$6, %eax
	leal	6(%rax), %ebx
	leaq	lC50(%rip), %rax
	movq	%rax, -66400(%rbp)
	leaq	lC8(%rip), %rdi
	movq	%rdi, -66392(%rbp)
	leaq	-65856(%rbp), %rax
	movq	%rax, -66384(%rbp)
	movl	$1, -336(%rbp)
	movl	%edx, -332(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -66376(%rbp)
	leaq	lC51(%rip), %rax
	movq	%rax, -66368(%rbp)
	movq	%rdi, -66360(%rbp)
	leaq	-65888(%rbp), %rax
	movq	%rax, -66352(%rbp)
	leaq	lC18(%rip), %rax
	movq	%rax, -66344(%rbp)
	movq	-66352(%rbp), %rax
	movq	-66344(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	pushq	-66392(%rbp)
	pushq	-66400(%rbp)
	movq	-66384(%rbp), %r8
	movq	-66376(%rbp), %r9
	movq	-66368(%rbp), %rdx
	movq	-66360(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
LCFI7:
	call	_system__concat_3__str_concat_3
	addq	$16, %rsp
	cmpl	$23, %ebx
	jle	L63
	movl	$1130, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
LCFI8:
	call	___gnat_rcheck_CE_Range_Check
L63:
	leaq	-65888(%rbp), %rax
	movq	%rax, -66336(%rbp)
	movl	$1, -328(%rbp)
	movl	%ebx, -324(%rbp)
	leaq	-328(%rbp), %rax
	movq	%rax, -66328(%rbp)
	movq	-66336(%rbp), %rcx
	movq	-66328(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	leaq	lC52(%rip), %rax
	movq	%rax, -66320(%rbp)
	leaq	lC19(%rip), %rax
	movq	%rax, -66312(%rbp)
	movq	-66320(%rbp), %rcx
	movq	-66312(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	leaq	lC53(%rip), %rax
	movq	%rax, -66304(%rbp)
	leaq	lC16(%rip), %rax
	movq	%rax, -66296(%rbp)
	movq	-66304(%rbp), %rcx
	movq	-66296(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	leaq	-65904(%rbp), %rax
	movq	%rax, -66288(%rbp)
	leaq	lC10(%rip), %r14
	movq	%r14, -66280(%rbp)
	movq	-66288(%rbp), %rax
	movq	-66280(%rbp), %rdx
	movq	%rax, %rcx
	movl	-228(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	11(%rax), %ebx
	leaq	-65904(%rbp), %rax
	movq	%rax, -66272(%rbp)
	movl	$1, -320(%rbp)
	movl	%edx, -316(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -66264(%rbp)
	leaq	lC54(%rip), %rax
	movq	%rax, -66256(%rbp)
	movq	%r14, -66248(%rbp)
	leaq	-65936(%rbp), %rax
	movq	%rax, -66240(%rbp)
	leaq	lC17(%rip), %rax
	movq	%rax, -66232(%rbp)
	movq	-66240(%rbp), %rax
	movq	-66232(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-66272(%rbp), %r8
	movq	-66264(%rbp), %r9
	movq	-66256(%rbp), %rdx
	movq	-66248(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$22, %ebx
	jle	L64
	movl	$1140, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L64:
	leaq	-65936(%rbp), %rax
	movq	%rax, -66224(%rbp)
	movl	$1, -312(%rbp)
	movl	%ebx, -308(%rbp)
	leaq	-312(%rbp), %rax
	movq	%rax, -66216(%rbp)
	movq	-66224(%rbp), %rcx
	movq	-66216(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
LEHE30:
	leaq	-63296(%rbp), %rax
	movq	%rax, %rdi
LEHB31:
	call	_system__secondary_stack__ss_mark
	movss	-656(%rbp), %xmm0
	movss	-652(%rbp), %xmm1
	movss	-648(%rbp), %xmm3
	pxor	%xmm2, %xmm2
	unpcklps	%xmm2, %xmm3
	unpcklps	%xmm1, %xmm0
	movlhps	%xmm3, %xmm0
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
	call	_view_cell_read_test__v4t_image.35
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	%r13, %rax
	movl	4(%rax), %edx
	movq	%r13, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	L65
	movq	%r13, %rax
	movl	4(%rax), %edx
	movq	%r13, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	jmp	L66
L65:
	movl	$0, %eax
L66:
	addl	$13, %eax
	movl	%eax, -232(%rbp)
	movl	-232(%rbp), %eax
	cltq
	movq	%rax, -240(%rbp)
	movl	-232(%rbp), %eax
	cltq
	movl	$1, %esi
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_allocate
	movq	%rax, %rbx
	movq	%rbx, -248(%rbp)
	leaq	lC55(%rip), %rax
	movq	%rax, -66208(%rbp)
	leaq	lC20(%rip), %rax
	movq	%rax, -66200(%rbp)
	movq	%rbx, -66192(%rbp)
	movl	$1, -304(%rbp)
	movl	-232(%rbp), %eax
	movl	%eax, -300(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -66184(%rbp)
	movq	-66192(%rbp), %rax
	movq	-66184(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	%r12, %r8
	movq	%r13, %r9
	movq	-66208(%rbp), %rdx
	movq	-66200(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	movq	%rbx, -66176(%rbp)
	movl	$1, -296(%rbp)
	movl	-232(%rbp), %eax
	movl	%eax, -292(%rbp)
	leaq	-296(%rbp), %rax
	movq	%rax, -66168(%rbp)
	movq	-66176(%rbp), %rcx
	movq	-66168(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
LEHE31:
	movl	$1, %ebx
L129:
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
LEHB32:
	call	_view_cell_read_test__L_12__B967b___finalizer.36
LEHE32:
	cmpl	$1, %ebx
	jne	L67
	movl	$1, %eax
L131:
	cmpl	$1, %eax
	jne	L68
	nop
	movl	-60916(%rbp), %esi
	testl	%esi, %esi
	js	L69
	cmpl	$49, %esi
	jle	L69
	movl	$1152, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
LEHB33:
	call	___gnat_rcheck_CE_Range_Check
L69:
	testl	%esi, %esi
	testl	%esi, %esi
	js	L73
	movslq	%esi, %rax
	addq	$1, %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	%rcx, %rax
	movq	%rbx, %rdx
	shldq	$2, %rax, %rdx
	salq	$2, %rax
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	shldq	$5, %rax, %rdx
	salq	$5, %rax
L73:
	testl	%esi, %esi
	js	L75
	movslq	%esi, %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
L75:
	movl	-60916(%rbp), %esi
	testl	%esi, %esi
	testl	%esi, %esi
	js	L79
	movslq	%esi, %rax
	addq	$1, %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	%rcx, %rax
	movq	%rbx, %rdx
	shldq	$2, %rax, %rdx
	salq	$2, %rax
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	shldq	$5, %rax, %rdx
	salq	$5, %rax
L79:
	testl	%esi, %esi
	js	L81
	movslq	%esi, %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
L81:
	movl	-60916(%rbp), %r12d
	movl	$-1, %ebx
L84:
	cmpl	%ebx, %r12d
	jle	L82
	addl	$1, %ebx
	movl	-60916(%rbp), %eax
	cmpl	%eax, %ebx
	jle	L83
	movl	$1152, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L83:
	movslq	%ebx, %rdx
	leaq	-65696(%rbp), %rcx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$3776, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movq	%rax, -256(%rbp)
	leaq	-65952(%rbp), %rax
	movq	%rax, -66160(%rbp)
	leaq	lC10(%rip), %rax
	movq	%rax, -66152(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rax), %rax
	addq	%rbp, %rax
	subq	$61860, %rax
	movl	(%rax), %ecx
	movq	-66160(%rbp), %rsi
	movq	-66152(%rbp), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, %edx
	leaq	-65952(%rbp), %rax
	movq	%rax, -66144(%rbp)
	movl	$1, -288(%rbp)
	movl	%edx, -284(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -66136(%rbp)
	movq	-66144(%rbp), %rsi
	movq	-66136(%rbp), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	jmp	L84
L82:
	movl	$2, %edi
	call	_ada__text_io__new_line__2
LEHE33:
L62:
	movl	-228(%rbp), %eax
	movl	%eax, -52(%rbp)
L60:
	movl	$0, %eax
	movl	%eax, -60916(%rbp)
	movl	$0, %eax
	movl	%eax, -60912(%rbp)
	jmp	L85
L59:
	movl	$0, %ebx
L17:
	leaq	-65696(%rbp), %rax
	movq	%rax, %r10
LEHB34:
	call	_view_cell_read_test___finalizer.37
LEHE34:
	cmpl	$1, %ebx
	je	L86
	movl	$0, %eax
L133:
	cmpl	$1, %eax
	je	L87
	jmp	L160
L136:
	movq	%rax, %rcx
	movq	%rdx, %rax
	cmpq	$1, %rax
	je	L90
	movq	%rcx, %r14
	jmp	L91
L90:
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_begin_handler_v1
	movq	%rax, -80(%rbp)
	leaq	-65696(%rbp), %rax
	addq	$2640, %rax
	movl	$0, %esi
	movq	%rax, %rdi
LEHB35:
	call	_udp_streams__udp_stream_typeDF__2
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_reraise_zcx
LEHE35:
L137:
	movq	%rax, %rbx
	movq	%rbx, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
LEHB36:
	call	___gnat_end_handler_v1
LEHE36:
	movq	%rbx, %r14
	jmp	L91
L135:
	movq	%rax, %r14
L91:
	movl	$0, %ebx
	jmp	L93
L6:
	movq	%r14, -66112(%rbp)
	jmp	L94
L138:
	movq	%rax, -67160(%rbp)
	movl	$0, %ebx
	jmp	L96
L10:
	movq	-67160(%rbp), %r15
	jmp	L97
L139:
	movq	%rax, %r15
L97:
	movl	$0, %eax
	jmp	L98
L11:
	movq	%r15, -66112(%rbp)
	jmp	L94
L140:
	movq	%rax, -67168(%rbp)
	movl	$0, %ebx
	jmp	L100
L14:
	movq	-67168(%rbp), %rax
	movq	%rax, -66128(%rbp)
	jmp	L101
L141:
	movq	%rax, -66128(%rbp)
L101:
	movl	$0, %eax
	jmp	L102
L15:
	movq	-66128(%rbp), %rax
	movq	%rax, -66112(%rbp)
	jmp	L94
L142:
LEHB37:
	movq	%r14, %rsp
	movq	%rax, -66112(%rbp)
	jmp	L94
L143:
	movq	%rax, -67176(%rbp)
	movl	$0, %ebx
	jmp	L105
L21:
	movq	-67176(%rbp), %rax
	movq	%rax, -67096(%rbp)
	jmp	L106
L144:
	movq	%rax, -67096(%rbp)
L106:
	movl	$0, %eax
	jmp	L107
L22:
	movq	-67096(%rbp), %rax
	movq	%rax, -66112(%rbp)
	jmp	L94
L145:
	movq	%rax, -67184(%rbp)
	movl	$0, %ebx
	jmp	L109
L26:
	movq	-67184(%rbp), %rax
	movq	%rax, -67104(%rbp)
	jmp	L110
L146:
	movq	%rax, -67104(%rbp)
L110:
	movl	$0, %eax
	jmp	L111
L27:
	movq	-67104(%rbp), %rax
	movq	%rax, -66112(%rbp)
	jmp	L94
L147:
	movq	%rax, -67192(%rbp)
	movl	$0, %ebx
	jmp	L113
L28:
	movq	-67192(%rbp), %rax
	movq	%rax, -67112(%rbp)
	jmp	L114
L148:
	movq	%rax, -67112(%rbp)
L114:
	movl	$0, %eax
	jmp	L115
L29:
	movq	-67112(%rbp), %rax
	movq	%rax, -66112(%rbp)
	jmp	L94
L149:
	movq	%rax, -67200(%rbp)
	movl	$0, %ebx
	jmp	L117
L45:
	movq	-67200(%rbp), %rax
	movq	%rax, -67120(%rbp)
	jmp	L118
L150:
	movq	%rax, -67120(%rbp)
L118:
	movl	$0, %eax
	jmp	L119
L46:
	movq	-67120(%rbp), %rax
	movq	%rax, -66112(%rbp)
	jmp	L94
L151:
	movq	%rax, -67208(%rbp)
	movl	$0, %ebx
	jmp	L121
L52:
	movq	-67208(%rbp), %rax
	movq	%rax, -67128(%rbp)
	jmp	L122
L152:
	movq	%rax, -67128(%rbp)
L122:
	movl	$0, %eax
	jmp	L123
L53:
	movq	-67128(%rbp), %rax
	movq	%rax, -66112(%rbp)
	jmp	L94
L153:
	movq	%rax, -67216(%rbp)
	movl	$0, %ebx
	jmp	L125
L56:
	movq	-67216(%rbp), %rax
	movq	%rax, -67136(%rbp)
	jmp	L126
L154:
	movq	%rax, -67136(%rbp)
L126:
	movl	$0, %eax
	jmp	L127
L57:
	movq	-67136(%rbp), %rax
	movq	%rax, -66112(%rbp)
	jmp	L94
L155:
	movq	%rax, -67224(%rbp)
	movl	$0, %ebx
	jmp	L129
L67:
	movq	-67224(%rbp), %rax
	movq	%rax, -67144(%rbp)
	jmp	L130
L156:
	movq	%rax, -67144(%rbp)
L130:
	movl	$0, %eax
	jmp	L131
L68:
	movq	-67144(%rbp), %rax
	movq	%rax, -66112(%rbp)
	jmp	L94
L134:
	movq	%rax, -66112(%rbp)
L94:
	movl	$1, %ebx
	jmp	L17
L86:
	movq	-66112(%rbp), %rax
	movq	%rax, -67152(%rbp)
	jmp	L132
L157:
	movq	%rax, -67152(%rbp)
L132:
	movl	$1, %eax
	jmp	L133
L87:
	movq	-67152(%rbp), %rax
	movq	%rax, %rdi
	call	__Unwind_Resume
L160:
	leaq	-40(%rbp), %rsp
LEHE37:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI9:
	ret
LFE1:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
	.align 2
LLSDA1:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT1-LLSDATTD1
LLSDATTD1:
	.byte	0x1
	.uleb128 LLSDACSE1-LLSDACSB1
LLSDACSB1:
	.uleb128 LEHB0-LFB1
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB1-LFB1
	.uleb128 LEHE1-LEHB1
	.uleb128 L134-LFB1
	.uleb128 0
	.uleb128 LEHB2-LFB1
	.uleb128 LEHE2-LEHB2
	.uleb128 L135-LFB1
	.uleb128 0
	.uleb128 LEHB3-LFB1
	.uleb128 LEHE3-LEHB3
	.uleb128 L136-LFB1
	.uleb128 0x3
	.uleb128 LEHB4-LFB1
	.uleb128 LEHE4-LEHB4
	.uleb128 L134-LFB1
	.uleb128 0
	.uleb128 LEHB5-LFB1
	.uleb128 LEHE5-LEHB5
	.uleb128 L138-LFB1
	.uleb128 0
	.uleb128 LEHB6-LFB1
	.uleb128 LEHE6-LEHB6
	.uleb128 L139-LFB1
	.uleb128 0
	.uleb128 LEHB7-LFB1
	.uleb128 LEHE7-LEHB7
	.uleb128 L140-LFB1
	.uleb128 0
	.uleb128 LEHB8-LFB1
	.uleb128 LEHE8-LEHB8
	.uleb128 L141-LFB1
	.uleb128 0
	.uleb128 LEHB9-LFB1
	.uleb128 LEHE9-LEHB9
	.uleb128 L134-LFB1
	.uleb128 0
	.uleb128 LEHB10-LFB1
	.uleb128 LEHE10-LEHB10
	.uleb128 L142-LFB1
	.uleb128 0
	.uleb128 LEHB11-LFB1
	.uleb128 LEHE11-LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB12-LFB1
	.uleb128 LEHE12-LEHB12
	.uleb128 L142-LFB1
	.uleb128 0
	.uleb128 LEHB13-LFB1
	.uleb128 LEHE13-LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB14-LFB1
	.uleb128 LEHE14-LEHB14
	.uleb128 L134-LFB1
	.uleb128 0
	.uleb128 LEHB15-LFB1
	.uleb128 LEHE15-LEHB15
	.uleb128 L143-LFB1
	.uleb128 0
	.uleb128 LEHB16-LFB1
	.uleb128 LEHE16-LEHB16
	.uleb128 L144-LFB1
	.uleb128 0
	.uleb128 LEHB17-LFB1
	.uleb128 LEHE17-LEHB17
	.uleb128 L145-LFB1
	.uleb128 0
	.uleb128 LEHB18-LFB1
	.uleb128 LEHE18-LEHB18
	.uleb128 L146-LFB1
	.uleb128 0
	.uleb128 LEHB19-LFB1
	.uleb128 LEHE19-LEHB19
	.uleb128 L147-LFB1
	.uleb128 0
	.uleb128 LEHB20-LFB1
	.uleb128 LEHE20-LEHB20
	.uleb128 L148-LFB1
	.uleb128 0
	.uleb128 LEHB21-LFB1
	.uleb128 LEHE21-LEHB21
	.uleb128 L134-LFB1
	.uleb128 0
	.uleb128 LEHB22-LFB1
	.uleb128 LEHE22-LEHB22
	.uleb128 L149-LFB1
	.uleb128 0
	.uleb128 LEHB23-LFB1
	.uleb128 LEHE23-LEHB23
	.uleb128 L150-LFB1
	.uleb128 0
	.uleb128 LEHB24-LFB1
	.uleb128 LEHE24-LEHB24
	.uleb128 L134-LFB1
	.uleb128 0
	.uleb128 LEHB25-LFB1
	.uleb128 LEHE25-LEHB25
	.uleb128 L151-LFB1
	.uleb128 0
	.uleb128 LEHB26-LFB1
	.uleb128 LEHE26-LEHB26
	.uleb128 L152-LFB1
	.uleb128 0
	.uleb128 LEHB27-LFB1
	.uleb128 LEHE27-LEHB27
	.uleb128 L134-LFB1
	.uleb128 0
	.uleb128 LEHB28-LFB1
	.uleb128 LEHE28-LEHB28
	.uleb128 L153-LFB1
	.uleb128 0
	.uleb128 LEHB29-LFB1
	.uleb128 LEHE29-LEHB29
	.uleb128 L154-LFB1
	.uleb128 0
	.uleb128 LEHB30-LFB1
	.uleb128 LEHE30-LEHB30
	.uleb128 L134-LFB1
	.uleb128 0
	.uleb128 LEHB31-LFB1
	.uleb128 LEHE31-LEHB31
	.uleb128 L155-LFB1
	.uleb128 0
	.uleb128 LEHB32-LFB1
	.uleb128 LEHE32-LEHB32
	.uleb128 L156-LFB1
	.uleb128 0
	.uleb128 LEHB33-LFB1
	.uleb128 LEHE33-LEHB33
	.uleb128 L134-LFB1
	.uleb128 0
	.uleb128 LEHB34-LFB1
	.uleb128 LEHE34-LEHB34
	.uleb128 L157-LFB1
	.uleb128 0
	.uleb128 LEHB35-LFB1
	.uleb128 LEHE35-LEHB35
	.uleb128 L137-LFB1
	.uleb128 0
	.uleb128 LEHB36-LFB1
	.uleb128 LEHE36-LEHB36
	.uleb128 L135-LFB1
	.uleb128 0
	.uleb128 LEHB37-LFB1
	.uleb128 LEHE37-LEHB37
	.uleb128 0
	.uleb128 0
LLSDACSE1:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 2
	.long	___gnat_others_value+4@GOTPCREL
LLSDATT1:
	.text
	.align 1,0x90
_view_cell_read_test__psrldq.31:
LFB6:
	pushq	%rbp
LCFI10:
	movq	%rsp, %rbp
LCFI11:
	subq	$64, %rsp
	movaps	%xmm0, -48(%rbp)
	movl	%edi, %eax
	movb	%al, -52(%rbp)
	movq	%r10, -64(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpb	$15, -52(%rbp)
	jbe	L162
	movl	$127, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Invalid_Data
L162:
	cmpb	$14, -52(%rbp)
	ja	L163
	movzbl	-52(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	L165(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	L165(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.p2align 2
L165:
	.long	L179-L165
	.long	L178-L165
	.long	L177-L165
	.long	L176-L165
	.long	L175-L165
	.long	L174-L165
	.long	L173-L165
	.long	L172-L165
	.long	L171-L165
	.long	L170-L165
	.long	L169-L165
	.long	L168-L165
	.long	L167-L165
	.long	L166-L165
	.long	L164-L165
L179:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$1, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L178:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$2, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L177:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$3, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L176:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$4, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L175:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$5, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L174:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$6, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L173:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$7, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L172:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$8, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L171:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$9, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L170:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$10, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L169:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$11, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L168:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$12, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L167:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$13, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L166:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$14, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L164:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$15, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L182
L163:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	psrldq	$16, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
L182:
	nop
	movaps	-32(%rbp), %xmm0
	leave
LCFI12:
	ret
LFE6:
	.align 1,0x90
_view_cell_read_test__pslldq.2:
LFB7:
	pushq	%rbp
LCFI13:
	movq	%rsp, %rbp
LCFI14:
	subq	$64, %rsp
	movaps	%xmm0, -48(%rbp)
	movl	%edi, %eax
	movb	%al, -52(%rbp)
	movq	%r10, -64(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpb	$15, -52(%rbp)
	jbe	L184
	movl	$155, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Invalid_Data
L184:
	cmpb	$14, -52(%rbp)
	ja	L185
	movzbl	-52(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	L187(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	L187(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.p2align 2
L187:
	.long	L201-L187
	.long	L200-L187
	.long	L199-L187
	.long	L198-L187
	.long	L197-L187
	.long	L196-L187
	.long	L195-L187
	.long	L194-L187
	.long	L193-L187
	.long	L192-L187
	.long	L191-L187
	.long	L190-L187
	.long	L189-L187
	.long	L188-L187
	.long	L186-L187
L201:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$1, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L200:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$2, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L199:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$3, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L198:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$4, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L197:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$5, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L196:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$6, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L195:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$7, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L194:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$8, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L193:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$9, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L192:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$10, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L191:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$11, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L190:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$12, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L189:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$13, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L188:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$14, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L186:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$15, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
	jmp	L204
L185:
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm0
	pslldq	$16, %xmm0
	movq	-16(%rbp), %rax
	movaps	%xmm0, (%rax)
L204:
	nop
	movaps	-32(%rbp), %xmm0
	leave
LCFI15:
	ret
LFE7:
	.align 1,0x90
_view_cell_read_test__por_128.32:
LFB8:
	pushq	%rbp
LCFI16:
	movq	%rsp, %rbp
LCFI17:
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm1, -80(%rbp)
	movq	%r10, -88(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movdqa	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movdqa	(%rax), %xmm1
	por	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movaps	%xmm0, (%rax)
	movaps	-48(%rbp), %xmm0
	popq	%rbp
LCFI18:
	ret
LFE8:
	.align 1,0x90
_view_cell_read_test__handle_r_limit__L_1__B241b___finalizer.34:
LFB17:
	pushq	%rbp
LCFI19:
	movq	%rsp, %rbp
LCFI20:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI21:
	ret
LFE17:
	.const
lC56:
	.ascii "last 50 vc"
lC57:
	.ascii "position: "
lC58:
	.ascii "side: "
lC59:
	.ascii "plane axis: "
lC60:
	.ascii "plane distance"
lC61:
	.ascii "front index:"
lC62:
	.ascii "back_index:"
	.align 3
lC29:
	.long	1
	.long	10
	.align 3
lC30:
	.long	1
	.long	7
	.align 3
lC24:
	.long	1
	.long	14
	.align 3
lC23:
	.long	1
	.long	26
	.align 3
lC26:
	.long	1
	.long	18
	.text
	.align 1,0x90
_view_cell_read_test__handle_r_limit.33:
LFB16:
	pushq	%rbp
LCFI22:
	movq	%rsp, %rbp
LCFI23:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
LEHB38:
	subq	$744, %rsp
LCFI24:
	movq	%r10, %r15
	movq	%r10, -360(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	lC56(%rip), %rcx
	leaq	lC29(%rip), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	movl	$1, %edi
	call	_ada__text_io__new_line__2
	movl	$0, -364(%rbp)
L227:
	movl	-364(%rbp), %eax
	cmpl	$49, %eax
	jg	L235
	movslq	%eax, %r14
	movq	%r14, %rax
	addq	%rax, %rax
	addq	%r14, %rax
	salq	$4, %rax
	addq	%r15, %rax
	movq	%rax, -56(%rbp)
	movq	%r14, %rax
	addq	%rax, %rax
	addq	%r14, %rax
	salq	$4, %rax
	addq	%r15, %rax
	movzwl	(%rax), %eax
LEHE38:
	testw	%ax, %ax
	je	L236
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
LEHB39:
	call	_system__secondary_stack__ss_mark
	movq	%r14, %rax
	addq	%rax, %rax
	addq	%r14, %rax
	salq	$4, %rax
	addq	%r15, %rax
	addq	$16, %rax
	movaps	(%rax), %xmm0
	movq	%r15, %r10
	call	_view_cell_read_test__v4t_image.35
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	%r13, %rax
	movl	4(%rax), %edx
	movq	%r13, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	L212
	movq	%r13, %rax
	movl	4(%rax), %edx
	movq	%r13, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	jmp	L213
L212:
	movl	$0, %eax
L213:
	addl	$10, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cltq
	movq	%rax, -72(%rbp)
	movl	-60(%rbp), %eax
	cltq
	movl	$1, %esi
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_allocate
	movq	%rax, %rbx
	movq	%rbx, -80(%rbp)
	leaq	lC57(%rip), %rax
	movq	%rax, -768(%rbp)
	leaq	lC29(%rip), %rax
	movq	%rax, -760(%rbp)
	movq	%rbx, -752(%rbp)
	movl	$1, -184(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -180(%rbp)
	leaq	-184(%rbp), %rax
	movq	%rax, -744(%rbp)
	movq	-752(%rbp), %rax
	movq	-744(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	%r12, %r8
	movq	%r13, %r9
	movq	-768(%rbp), %rdx
	movq	-760(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	movq	%rbx, -736(%rbp)
	movl	$1, -176(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -172(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -728(%rbp)
	movq	-736(%rbp), %rcx
	movq	-728(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
LEHE39:
	movl	$1, %ebx
L230:
	leaq	-224(%rbp), %rax
	movq	%rax, %r10
LEHB40:
	call	_view_cell_read_test__handle_r_limit__L_1__B241b___finalizer.34
LEHE40:
	cmpl	$1, %ebx
	jne	L214
	movl	$1, %eax
L232:
	cmpl	$1, %eax
	jne	L215
	nop
	movq	%r14, %rax
	addq	%rax, %rax
	addq	%r14, %rax
	salq	$4, %rax
	addq	%r15, %rax
	addq	$32, %rax
LEHB41:
	movzbl	(%rax), %eax
	movb	%al, -233(%rbp)
	leaq	-233(%rbp), %rax
	movq	%rax, -720(%rbp)
	leaq	lC3(%rip), %rax
	movq	%rax, -712(%rbp)
	leaq	lC58(%rip), %rax
	movq	%rax, -704(%rbp)
	leaq	lC8(%rip), %rax
	movq	%rax, -696(%rbp)
	leaq	-232(%rbp), %rax
	movq	%rax, -688(%rbp)
	leaq	lC30(%rip), %rbx
	movq	%rbx, -680(%rbp)
	movq	-688(%rbp), %rax
	movq	-680(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-720(%rbp), %r8
	movq	-712(%rbp), %r9
	movq	-704(%rbp), %rdx
	movq	-696(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	leaq	-232(%rbp), %rax
	movq	%rax, -672(%rbp)
	movq	%rbx, -664(%rbp)
	movq	-672(%rbp), %rcx
	movq	-664(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	movq	%rsp, %rax
	movq	%rax, %rbx
	movq	%r14, %rax
	addq	%rax, %rax
	addq	%r14, %rax
	salq	$4, %rax
	addq	%r15, %rax
	movzbl	1(%rax), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %esi
	cmpw	$3, %si
	jbe	L216
	movl	$427, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Invalid_Data
L216:
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	L217
	movl	$427, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Access_Check
L217:
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	4(%rax), %ecx
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	jl	L218
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	4(%rax), %ecx
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	leal	1(%rdx), %eax
	jmp	L219
L218:
	movl	$0, %eax
L219:
	addl	$12, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cltq
	movq	%rax, -96(%rbp)
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	%rax, -104(%rbp)
	movzwl	%si, %edx
	leaq	lC59(%rip), %rax
	movq	%rax, -656(%rbp)
	leaq	lC4(%rip), %r13
	movq	%r13, -648(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -640(%rbp)
	movl	$1, -168(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -164(%rbp)
	leaq	-168(%rbp), %rax
	movq	%rax, -632(%rbp)
	salq	$4, %rdx
	leaq	_axis_str.49(%rip), %rax
	leaq	(%rdx,%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	-640(%rbp), %r9
	movq	-632(%rbp), %r10
	movq	%r9, %rdi
	movq	%r10, %rsi
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	-656(%rbp), %rdx
	movq	-648(%rbp), %rcx
	call	_system__concat_2__str_concat_2
	movq	-104(%rbp), %rax
	movq	%rax, -624(%rbp)
	movl	$1, -160(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -156(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -616(%rbp)
	movq	-624(%rbp), %rsi
	movq	-616(%rbp), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	movq	%rbx, %rsp
	leaq	-256(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	%r13, -600(%rbp)
	movq	%r14, %rax
	addq	%rax, %rax
	addq	%r14, %rax
	salq	$4, %rax
	addq	%r15, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	L220
	pxor	%xmm1, %xmm1
	cvtsi2ssq	%rax, %xmm1
	movd	%xmm1, %eax
	jmp	L221
L220:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
	movd	%xmm0, %eax
L221:
	movq	-608(%rbp), %rcx
	movq	-600(%rbp), %rbx
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	14(%rax), %ebx
	leaq	-256(%rbp), %rax
	movq	%rax, -592(%rbp)
	movl	$1, -152(%rbp)
	movl	%edx, -148(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -584(%rbp)
	leaq	lC60(%rip), %rax
	movq	%rax, -576(%rbp)
	leaq	lC24(%rip), %rax
	movq	%rax, -568(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -560(%rbp)
	leaq	lC23(%rip), %rax
	movq	%rax, -552(%rbp)
	movq	-560(%rbp), %rax
	movq	-552(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-592(%rbp), %r8
	movq	-584(%rbp), %r9
	movq	-576(%rbp), %rdx
	movq	-568(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$26, %ebx
	jle	L222
	movl	$428, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L222:
	leaq	-288(%rbp), %rax
	movq	%rax, -544(%rbp)
	movl	$1, -144(%rbp)
	movl	%ebx, -140(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -536(%rbp)
	movq	-544(%rbp), %rcx
	movq	-536(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	leaq	-296(%rbp), %rax
	movq	%rax, -528(%rbp)
	leaq	lC8(%rip), %rax
	movq	%rax, -520(%rbp)
	movq	%r14, %rax
	addq	%rax, %rax
	addq	%r14, %rax
	salq	$4, %rax
	addq	%r15, %rax
	movzwl	(%rax), %eax
	andw	$8191, %ax
	movzwl	%ax, %ecx
	movq	-528(%rbp), %rbx
	movq	-520(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	12(%rax), %ebx
	leaq	-296(%rbp), %rax
	movq	%rax, -512(%rbp)
	movl	$1, -136(%rbp)
	movl	%edx, -132(%rbp)
	leaq	-136(%rbp), %rax
	movq	%rax, -504(%rbp)
	leaq	lC61(%rip), %rax
	movq	%rax, -496(%rbp)
	leaq	lC4(%rip), %rax
	movq	%rax, -488(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -480(%rbp)
	leaq	lC26(%rip), %rax
	movq	%rax, -472(%rbp)
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-512(%rbp), %r8
	movq	-504(%rbp), %r9
	movq	-496(%rbp), %rdx
	movq	-488(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$18, %ebx
	jle	L223
	movl	$429, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L223:
	leaq	-320(%rbp), %rax
	movq	%rax, -464(%rbp)
	movl	$1, -128(%rbp)
	movl	%ebx, -124(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -456(%rbp)
	movq	-464(%rbp), %rcx
	movq	-456(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	leaq	-328(%rbp), %rax
	movq	%rax, -448(%rbp)
	leaq	lC8(%rip), %rax
	movq	%rax, -440(%rbp)
	movq	%r14, %rax
	addq	%rax, %rax
	addq	%r14, %rax
	salq	$4, %rax
	addq	%r15, %rax
	addq	$12, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %ecx
	movq	-448(%rbp), %rbx
	movq	-440(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	11(%rax), %ebx
	leaq	-328(%rbp), %rax
	movq	%rax, -432(%rbp)
	movl	$1, -120(%rbp)
	movl	%edx, -116(%rbp)
	leaq	-120(%rbp), %rax
	movq	%rax, -424(%rbp)
	leaq	lC62(%rip), %rax
	movq	%rax, -416(%rbp)
	leaq	lC10(%rip), %rax
	movq	%rax, -408(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, -400(%rbp)
	leaq	lC6(%rip), %rax
	movq	%rax, -392(%rbp)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-432(%rbp), %r8
	movq	-424(%rbp), %r9
	movq	-416(%rbp), %rdx
	movq	-408(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$17, %ebx
	jle	L224
	movl	$430, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L224:
	leaq	-352(%rbp), %rax
	movq	%rax, -384(%rbp)
	movl	$1, -112(%rbp)
	movl	%ebx, -108(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-384(%rbp), %rcx
	movq	-376(%rbp), %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	jmp	L225
L236:
	nop
L225:
	movl	$2, %edi
	call	_ada__text_io__new_line__2
	addl	$1, -364(%rbp)
	jmp	L227
L233:
	movq	%rax, -784(%rbp)
	movl	$0, %ebx
	jmp	L230
L214:
	movq	-784(%rbp), %rax
	movq	%rax, -776(%rbp)
	jmp	L231
L234:
	movq	%rax, -776(%rbp)
L231:
	movl	$0, %eax
	jmp	L232
L215:
	movq	-776(%rbp), %rax
	movq	%rax, %rdi
	call	__Unwind_Resume
L235:
	nop
	leaq	-40(%rbp), %rsp
LEHE41:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI25:
	ret
LFE16:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
LLSDA16:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE16-LLSDACSB16
LLSDACSB16:
	.uleb128 LEHB38-LFB16
	.uleb128 LEHE38-LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB39-LFB16
	.uleb128 LEHE39-LEHB39
	.uleb128 L233-LFB16
	.uleb128 0
	.uleb128 LEHB40-LFB16
	.uleb128 LEHE40-LEHB40
	.uleb128 L234-LFB16
	.uleb128 0
	.uleb128 LEHB41-LFB16
	.uleb128 LEHE41-LEHB41
	.uleb128 0
	.uleb128 0
LLSDACSE16:
	.text
	.align 1,0x90
_view_cell_read_test__findviewcell.30:
LFB19:
	pushq	%rbp
LCFI26:
	movq	%rsp, %rbp
LCFI27:
	pushq	%rbx
	subq	$296, %rsp
LCFI28:
	movq	%rdi, -264(%rbp)
	movaps	%xmm0, -288(%rbp)
	movl	%esi, -268(%rbp)
	movq	%r10, %rbx
	movq	%r10, -296(%rbp)
	movzwl	-260(%rbp), %eax
	movzwl	%ax, %edx
	movzbl	-261(%rbp), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movzbl	-262(%rbp), %eax
	movzbl	-261(%rbp), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movzbl	-263(%rbp), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	sall	$12, %eax
	orl	%edx, %eax
	movw	%ax, -26(%rbp)
	movzbl	-263(%rbp), %eax
	andl	$96, %eax
	testb	%al, %al
	jne	L238
	movl	$478, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L238:
	movzbl	-263(%rbp), %eax
	andl	$96, %eax
	testb	%al, %al
	jne	L239
	movl	$478, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L239:
	movzbl	-263(%rbp), %eax
	andl	$96, %eax
	testb	%al, %al
	jne	L240
	movl	$481, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L240:
	movzbl	-263(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %eax
	addq	$1207, %rax
	movss	4(%rbx,%rax,4), %xmm0
	movzbl	-263(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %eax
	addq	$1203, %rax
	movss	4(%rbx,%rax,4), %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	lC31(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movl	-24(%rbp), %eax
	testq	%rax, %rax
	js	L241
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	L242
L241:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
L242:
	mulss	%xmm0, %xmm1
	movzbl	-263(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %eax
	addq	$1203, %rax
	movss	4(%rbx,%rax,4), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	4784(%rbx), %eax
	cmpl	$49, %eax
	jne	L243
	movl	-264(%rbp), %eax
	movl	%eax, -182(%rbp)
	movzwl	-260(%rbp), %eax
	movw	%ax, -178(%rbp)
	jmp	L265
L243:
	movzwl	-264(%rbp), %eax
	testw	%ax, %ax
	jne	L245
	movl	-264(%rbp), %eax
	movl	%eax, -182(%rbp)
	movzwl	-260(%rbp), %eax
	movw	%ax, -178(%rbp)
	jmp	L265
L245:
	movl	4780(%rbx), %eax
	cmpl	$49, %eax
	jle	L246
	movl	$500, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L246:
	movl	-264(%rbp), %eax
	movl	%eax, -208(%rbp)
	movzwl	-260(%rbp), %eax
	movw	%ax, -204(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -200(%rbp)
	movss	-32(%rbp), %xmm0
	movss	%xmm0, -196(%rbp)
	movl	4780(%rbx), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbx, %rax
	addq	$3776, %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, 4(%rax)
	movq	-200(%rbp), %rdx
	movq	%rdx, 12(%rax)
	movl	-192(%rbp), %edx
	movl	%edx, 20(%rax)
	movaps	-288(%rbp), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	-288(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	-288(%rbp), %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	-288(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movzbl	-263(%rbp), %eax
	andl	$96, %eax
	cmpb	$96, %al
	jne	L247
	movl	$528, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L247:
	movzbl	-263(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_unit_vectors.50(%rip), %rax
	movaps	(%rdx,%rax), %xmm0
	movaps	%xmm0, -112(%rbp)
	movzbl	-263(%rbp), %eax
	andl	$96, %eax
	cmpb	$96, %al
	jne	L248
	movl	$529, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L248:
	movzbl	-263(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_unit_vectors.50(%rip), %rax
	movaps	(%rdx,%rax), %xmm0
	movaps	%xmm0, -128(%rbp)
	movzbl	-263(%rbp), %eax
	andl	$96, %eax
	cmpb	$96, %al
	jne	L249
	movl	$531, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L249:
	movzbl	-263(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_unit_vectors.50(%rip), %rax
	movaps	(%rdx,%rax), %xmm0
	movaps	%xmm0, -144(%rbp)
	movzbl	-263(%rbp), %eax
	andl	$96, %eax
	cmpb	$96, %al
	jne	L250
	movl	$532, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L250:
	movzbl	-263(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_unit_vectors.50(%rip), %rax
	movaps	(%rdx,%rax), %xmm0
	movaps	%xmm0, -160(%rbp)
	movzbl	-263(%rbp), %eax
	andl	$96, %eax
	cmpb	$96, %al
	jne	L251
	movl	$544, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L251:
	movzbl	-263(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_unit_vectors.50(%rip), %rax
	movaps	(%rdx,%rax), %xmm0
	mulps	-288(%rbp), %xmm0
	movaps	%xmm0, -176(%rbp)
	movaps	-112(%rbp), %xmm0
	movq	%rbx, %r10
	movl	$3, %edi
	call	_view_cell_read_test__psrldq.31
	movaps	%xmm0, -112(%rbp)
	movaps	-128(%rbp), %xmm0
	movq	%rbx, %r10
	movl	$11, %edi
	call	_view_cell_read_test__pslldq.2
	movaps	%xmm0, -128(%rbp)
	movaps	-128(%rbp), %xmm1
	movaps	-112(%rbp), %xmm0
	movq	%rbx, %r10
	call	_view_cell_read_test__por_128.32
	movaps	%xmm0, -128(%rbp)
	movaps	-48(%rbp), %xmm0
	movq	%rbx, %r10
	movl	$3, %edi
	call	_view_cell_read_test__psrldq.31
	movaps	%xmm0, -48(%rbp)
	movaps	-64(%rbp), %xmm0
	movq	%rbx, %r10
	movl	$11, %edi
	call	_view_cell_read_test__pslldq.2
	movaps	%xmm0, -64(%rbp)
	movaps	-64(%rbp), %xmm1
	movaps	-48(%rbp), %xmm0
	movq	%rbx, %r10
	call	_view_cell_read_test__por_128.32
	movaps	%xmm0, -64(%rbp)
	movaps	-128(%rbp), %xmm0
	mulps	-64(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	-288(%rbp), %xmm0
	addps	-64(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	-144(%rbp), %xmm0
	movq	%rbx, %r10
	movl	$7, %edi
	call	_view_cell_read_test__psrldq.31
	movaps	%xmm0, -144(%rbp)
	movaps	-160(%rbp), %xmm0
	movq	%rbx, %r10
	movl	$7, %edi
	call	_view_cell_read_test__pslldq.2
	movaps	%xmm0, -160(%rbp)
	movaps	-160(%rbp), %xmm1
	movaps	-144(%rbp), %xmm0
	movq	%rbx, %r10
	call	_view_cell_read_test__por_128.32
	movaps	%xmm0, -160(%rbp)
	movaps	-80(%rbp), %xmm0
	movq	%rbx, %r10
	movl	$7, %edi
	call	_view_cell_read_test__psrldq.31
	movaps	%xmm0, -80(%rbp)
	movaps	-96(%rbp), %xmm0
	movq	%rbx, %r10
	movl	$7, %edi
	call	_view_cell_read_test__pslldq.2
	movaps	%xmm0, -96(%rbp)
	movaps	-96(%rbp), %xmm1
	movaps	-80(%rbp), %xmm0
	movq	%rbx, %r10
	call	_view_cell_read_test__por_128.32
	movaps	%xmm0, -96(%rbp)
	movaps	-160(%rbp), %xmm0
	mulps	-96(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	-64(%rbp), %xmm0
	addps	-96(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movl	4784(%rbx), %eax
	cmpl	$49, %eax
	jle	L252
	movl	$602, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L252:
	movl	-264(%rbp), %eax
	movl	%eax, -256(%rbp)
	movzwl	-260(%rbp), %eax
	movw	%ax, -252(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -248(%rbp)
	movzwl	-26(%rbp), %eax
	movw	%ax, -244(%rbp)
	movaps	-288(%rbp), %xmm0
	movaps	%xmm0, -240(%rbp)
	movb	$32, -224(%rbp)
	movl	4784(%rbx), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rbx, %rax
	movq	-256(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-248(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-240(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-232(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-224(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-216(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movaps	-96(%rbp), %xmm0
	comiss	-32(%rbp), %xmm0
	jb	L268
	movzbl	-264(%rbp), %eax
	movzbl	-263(%rbp), %edx
	andl	$31, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -20(%rbp)
	movl	4784(%rbx), %eax
	cmpl	$49, %eax
	jle	L255
	movl	$614, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L255:
	movl	4784(%rbx), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rbx, %rax
	addq	$32, %rax
	movb	$102, (%rax)
	movl	4780(%rbx), %eax
	cmpl	$49, %eax
	jle	L256
	movl	$615, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L256:
	movl	4780(%rbx), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbx, %rax
	addq	$3796, %rax
	movb	$102, (%rax)
	jmp	L267
L268:
	movzwl	-26(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	4784(%rbx), %eax
	cmpl	$49, %eax
	jle	L258
	movl	$624, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L258:
	movl	4784(%rbx), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rbx, %rax
	addq	$32, %rax
	movb	$98, (%rax)
	movl	4780(%rbx), %eax
	cmpl	$49, %eax
	jle	L259
	movl	$625, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L259:
	movl	4780(%rbx), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbx, %rax
	addq	$3796, %rax
	movb	$98, (%rax)
L267:
	movl	4784(%rbx), %eax
	cmpl	$2147483647, %eax
	jne	L260
	movl	$640, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
L260:
	movl	4784(%rbx), %eax
	addl	$1, %eax
	movl	%eax, 4784(%rbx)
	movl	4780(%rbx), %eax
	cmpl	$2147483647, %eax
	jne	L261
	movl	$642, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
L261:
	movl	4780(%rbx), %eax
	addl	$1, %eax
	movl	%eax, 4780(%rbx)
L262:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	testl	%eax, %eax
	je	L263
	cmpl	$10000, %eax
	jbe	L264
L263:
	movl	$667, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L264:
	movl	%eax, %ecx
	movl	-20(%rbp), %edx
	movaps	-288(%rbp), %xmm0
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rbx, %rax
	addq	$4906, %rax
	movq	%rbx, %r10
	movl	%edx, %esi
	movzwl	4(%rax), %edx
	movzwl	6(%rax), %ecx
	salq	$16, %rcx
	orq	%rcx, %rdx
	movzwl	8(%rax), %eax
	salq	$32, %rax
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	_view_cell_read_test__findviewcell.30
	movw	%ax, -182(%rbp)
	movq	%rax, %rdx
	shrq	$16, %rdx
	andb	$-1, %dh
	movw	%dx, -180(%rbp)
	shrq	$32, %rax
	andb	$-1, %ah
	movw	%ax, -178(%rbp)
	nop
L265:
	movl	$0, %eax
	movl	-182(%rbp), %edx
	movl	%edx, %ecx
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movzwl	-178(%rbp), %edx
	movzwl	%dx, %edx
	salq	$32, %rdx
	movabsq	$-281470681743361, %rcx
	andq	%rcx, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rbx
	leave
LCFI29:
	ret
LFE19:
	.const
lC63:
	.ascii " "
lC64:
	.ascii "v "
	.text
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__v_str.18:
LFB21:
	pushq	%rbp
LCFI30:
	movq	%rsp, %rbp
LCFI31:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp
LCFI32:
	movss	%xmm0, -180(%rbp)
	movss	%xmm1, -184(%rbp)
	movss	%xmm2, -188(%rbp)
	movq	%r10, -200(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	leaq	lC4(%rip), %rbx
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	movl	-180(%rbp), %eax
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, -204(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %r12
	leaq	lC4(%rip), %r13
	movq	%r12, %rsi
	movq	%r13, %rcx
	movl	-184(%rbp), %eax
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %ebx
	leaq	-128(%rbp), %rax
	movq	%rax, %r14
	leaq	lC4(%rip), %r15
	movq	%r14, %rsi
	movq	%r15, %rcx
	movl	-188(%rbp), %eax
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %ecx
	movl	$0, %eax
	movl	-204(%rbp), %edi
	testl	%edi, %edi
	cmovns	%edi, %eax
	addl	$2, %eax
	leal	1(%rax), %edx
	movl	$0, %eax
	testl	%ebx, %ebx
	cmovns	%ebx, %eax
	addl	%edx, %eax
	leal	1(%rax), %edx
	movl	$0, %eax
	testl	%ecx, %ecx
	cmovns	%ecx, %eax
	leal	(%rdx,%rax), %r13d
	leaq	-128(%rbp), %rax
	movq	%rax, -336(%rbp)
	movl	$1, -72(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -328(%rbp)
	leaq	lC63(%rip), %rsi
	movq	%rsi, -320(%rbp)
	leaq	lC3(%rip), %rdx
	movq	%rdx, -312(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -304(%rbp)
	movl	$1, -64(%rbp)
	movl	%ebx, -60(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -280(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -272(%rbp)
	movl	$1, -56(%rbp)
	movl	%edi, -52(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)
	leaq	lC64(%rip), %rax
	movq	%rax, -256(%rbp)
	leaq	lC1(%rip), %rax
	movq	%rax, -248(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	lC0(%rip), %rax
	movq	%rax, -232(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	pushq	-328(%rbp)
	pushq	-336(%rbp)
	pushq	-312(%rbp)
	pushq	-320(%rbp)
	pushq	-296(%rbp)
	pushq	-304(%rbp)
	pushq	-280(%rbp)
	pushq	-288(%rbp)
	movq	-272(%rbp), %r8
	movq	-264(%rbp), %r9
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_6__str_concat_6
	addq	$64, %rsp
	cmpl	$40, %r13d
	jle	L270
	movl	$686, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L270:
	movl	$0, %eax
	testl	%r13d, %r13d
	cmovns	%r13d, %eax
	movslq	%eax, %r12
	movl	$0, %eax
	testl	%r13d, %r13d
	cmovns	%r13d, %eax
	cltq
	addq	$11, %rax
	andq	$-4, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_allocate
	movq	%rax, %rbx
	movq	%rbx, %rax
	movl	$1, (%rax)
	movl	%r13d, 4(%rax)
	leaq	8(%rax), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rcx
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_memcpy
	movq	%rbx, %rax
	addq	$8, %rax
	movq	%rax, -224(%rbp)
	movq	%rbx, %rax
	movq	%rax, -216(%rbp)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI33:
	ret
LFE21:
	.const
lC65:
	.ascii "vc_nodes.obj"
lC66:
	.ascii "invalid axis in node ?"
lC67:
	.ascii "_"
lC68:
	.ascii "g plane_"
lC69:
	.ascii "s 0"
lC70:
	.ascii "f "
	.align 3
lC27:
	.long	1
	.long	8
	.align 3
lC28:
	.long	1
	.long	3
	.text
	.align 1,0x90
_view_cell_read_test__nodes_to_obj.14:
LFB20:
	pushq	%rbp
LCFI34:
	movq	%rsp, %rbp
LCFI35:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
LEHB42:
	subq	$792, %rsp
LCFI36:
	movq	%r10, -528(%rbp)
	movq	%r10, -520(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$1, %eax
	xchgb	_obj_invalid_axis_errorF.40(%rip), %al
	xorl	$1, %eax
	testb	%al, %al
	je	L274
	leaq	_view_cell_read_test__nodes_to_obj__obj_invalid_axis_error.39(%rip), %rax
	movq	%rax, %rdi
	call	_system__exception_table__register_exception
L274:
	movq	$0, -168(%rbp)
	movl	$0, -60(%rbp)
	movw	$0, -176(%rbp)
	movw	$0, -174(%rbp)
	movw	$0, -172(%rbp)
	leaq	lC42(%rip), %r14
	leaq	lC9(%rip), %r15
	leaq	lC65(%rip), %r12
	leaq	lC4(%rip), %r13
	movq	-168(%rbp), %rax
	movq	%r14, %r8
	movq	%r15, %r9
	movq	%r12, %rdx
	movq	%r13, %rcx
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ada__text_io__create
	movq	%rax, -168(%rbp)
	movq	-528(%rbp), %rax
	movl	4792(%rax), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	L275
	movl	$1, -56(%rbp)
L329:
	cmpl	$10000, -56(%rbp)
	jbe	L276
	movl	$705, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L276:
	movl	-56(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	-528(%rbp), %rcx
	addq	%rcx, %rax
	leaq	4906(%rax), %rdx
	movabsq	$281474976710655, %rax
	andq	4(%rdx), %rax
	movq	%rax, %rcx
	movq	-184(%rbp), %rdx
	movabsq	$-281474976710656, %rax
	andq	%rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -184(%rbp)
	movzwl	-184(%rbp), %eax
	testw	%ax, %ax
	je	L412
	movzwl	-180(%rbp), %eax
	movzwl	%ax, %edx
	movzbl	-181(%rbp), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%edx, %eax
	movl	%eax, -68(%rbp)
	movzbl	-183(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %ecx
	testw	%cx, %cx
	je	L279
	cmpw	$3, %cx
	jbe	L280
L279:
	movl	$715, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L280:
	movzbl	-183(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %edx
	testw	%dx, %dx
	je	L281
	cmpw	$3, %dx
	jbe	L282
L281:
	movl	$715, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L282:
	movzbl	-183(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %esi
	testw	%si, %si
	je	L283
	cmpw	$3, %si
	jbe	L284
L283:
	movl	$718, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L284:
	movzwl	%cx, %eax
	addq	$1207, %rax
	movq	-528(%rbp), %rcx
	movss	4(%rcx,%rax,4), %xmm0
	movzwl	%dx, %eax
	addq	$1203, %rax
	movss	4(%rcx,%rax,4), %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movl	-68(%rbp), %eax
	testq	%rax, %rax
	js	L285
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	L286
L285:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
L286:
	mulss	%xmm0, %xmm1
	movss	lC31(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movzwl	%si, %eax
	addq	$1203, %rax
	movq	-528(%rbp), %rcx
	movss	4(%rcx,%rax,4), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -72(%rbp)
	movzbl	-183(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %eax
	cmpw	$3, %ax
	jbe	L287
	movl	$720, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Invalid_Data
LEHE42:
L287:
	cmpw	$2, %ax
	je	L288
	cmpw	$2, %ax
	ja	L289
	testw	%ax, %ax
	je	L290
	cmpw	$1, %ax
	je	L291
	jmp	L289
L290:
	leaq	-216(%rbp), %rax
	movq	%rax, %rdi
LEHB43:
	call	_system__secondary_stack__ss_mark
	movq	-528(%rbp), %rax
	movss	4824(%rax), %xmm1
	movss	4820(%rax), %xmm0
	movl	-72(%rbp), %edx
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%edx, %xmm0
	call	_view_cell_read_test__nodes_to_obj__v_str.18
	movq	-168(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	call	_ada__text_io__put_line
LEHE43:
	movl	$1, %ebx
L332:
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
LEHB44:
	call	_view_cell_read_test__nodes_to_obj__L_3__B396b___finalizer.15
LEHE44:
	cmpl	$1, %ebx
	jne	L292
	movl	$1, %eax
L334:
	cmpl	$1, %eax
	jne	L293
	nop
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
LEHB45:
	call	_system__secondary_stack__ss_mark
	movq	-528(%rbp), %rax
	movss	4824(%rax), %xmm1
	movss	4836(%rax), %xmm0
	movl	-72(%rbp), %edx
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%edx, %xmm0
	call	_view_cell_read_test__nodes_to_obj__v_str.18
	movq	-168(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	call	_ada__text_io__put_line
LEHE45:
	movl	$1, %ebx
L336:
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
LEHB46:
	call	_view_cell_read_test__nodes_to_obj__L_3__B398b___finalizer.16
LEHE46:
	cmpl	$1, %ebx
	jne	L294
	movl	$1, %eax
L338:
	cmpl	$1, %eax
	jne	L295
	nop
	leaq	-264(%rbp), %rax
	movq	%rax, %rdi
LEHB47:
	call	_system__secondary_stack__ss_mark
	movq	-528(%rbp), %rax
	movss	4840(%rax), %xmm1
	movss	4836(%rax), %xmm0
	movl	-72(%rbp), %edx
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%edx, %xmm0
	call	_view_cell_read_test__nodes_to_obj__v_str.18
	movq	-168(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	call	_ada__text_io__put_line
LEHE47:
	movl	$1, %ebx
L340:
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
LEHB48:
	call	_view_cell_read_test__nodes_to_obj__L_3__B400b___finalizer.17
LEHE48:
	cmpl	$1, %ebx
	jne	L296
	movl	$1, %eax
L342:
	cmpl	$1, %eax
	jne	L297
	nop
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
LEHB49:
	call	_system__secondary_stack__ss_mark
	movq	-528(%rbp), %rax
	movss	4840(%rax), %xmm1
	movss	4820(%rax), %xmm0
	movl	-72(%rbp), %edx
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%edx, %xmm0
	call	_view_cell_read_test__nodes_to_obj__v_str.18
	movq	-168(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	call	_ada__text_io__put_line
LEHE49:
	movl	$1, %ebx
L344:
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
LEHB50:
	call	_view_cell_read_test__nodes_to_obj__L_3__B402b___finalizer.19
LEHE50:
	cmpl	$1, %ebx
	jne	L298
	movl	$1, %eax
L346:
	cmpl	$1, %eax
	jne	L299
	nop
	jmp	L300
L291:
	leaq	-312(%rbp), %rax
	movq	%rax, %rdi
LEHB51:
	call	_system__secondary_stack__ss_mark
	movl	$743, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
LEHE51:
L404:
	cmpl	$1, %r12d
	jne	L301
	movl	$1, %eax
L350:
	cmpl	$1, %eax
	jne	L302
	nop
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
LEHB52:
	call	_system__secondary_stack__ss_mark
	movl	$746, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
LEHE52:
L405:
	cmpl	$1, %r12d
	jne	L303
	movl	$1, %eax
L354:
	cmpl	$1, %eax
	jne	L304
	nop
	leaq	-360(%rbp), %rax
	movq	%rax, %rdi
LEHB53:
	call	_system__secondary_stack__ss_mark
	movl	$749, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
LEHE53:
L406:
	cmpl	$1, %r12d
	jne	L305
	movl	$1, %eax
L358:
	cmpl	$1, %eax
	jne	L306
	nop
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
LEHB54:
	call	_system__secondary_stack__ss_mark
	movl	$752, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
LEHE54:
L407:
	cmpl	$1, %r12d
	jne	L307
	movl	$1, %eax
L362:
	cmpl	$1, %eax
	jne	L308
	nop
	jmp	L300
L288:
	leaq	-408(%rbp), %rax
	movq	%rax, %rdi
LEHB55:
	call	_system__secondary_stack__ss_mark
	movl	$757, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
LEHE55:
L408:
	cmpl	$1, %r12d
	jne	L309
	movl	$1, %eax
L366:
	cmpl	$1, %eax
	jne	L310
	nop
	leaq	-432(%rbp), %rax
	movq	%rax, %rdi
LEHB56:
	call	_system__secondary_stack__ss_mark
	movl	$760, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
LEHE56:
L409:
	cmpl	$1, %r12d
	jne	L311
	movl	$1, %eax
L370:
	cmpl	$1, %eax
	jne	L312
	nop
	leaq	-456(%rbp), %rax
	movq	%rax, %rdi
LEHB57:
	call	_system__secondary_stack__ss_mark
	movl	$763, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
LEHE57:
L410:
	cmpl	$1, %r12d
	jne	L313
	movl	$1, %eax
L374:
	cmpl	$1, %eax
	jne	L314
	nop
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
LEHB58:
	call	_system__secondary_stack__ss_mark
	movl	$766, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
LEHE58:
L411:
	cmpl	$1, %r12d
	jne	L315
	movl	$1, %eax
L378:
	cmpl	$1, %eax
	jne	L316
	nop
	jmp	L300
L289:
	leaq	lC66(%rip), %rax
	movq	%rax, -704(%rbp)
	leaq	lC17(%rip), %rax
	movq	%rax, -696(%rbp)
	movq	-704(%rbp), %rbx
	movq	-696(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	leaq	_view_cell_read_test__nodes_to_obj__obj_invalid_axis_error.39(%rip), %rax
	movq	%rax, %rdi
LEHB59:
	call	___gnat_raise_exception
L300:
	movzbl	-183(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %edx
	cmpw	$2, %dx
	jbe	L317
	movl	$772, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L317:
	movzbl	-183(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %eax
	cmpw	$2, %ax
	jbe	L318
	movl	$773, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L318:
	movzwl	%ax, %eax
	movzwl	-176(%rbp,%rax,2), %eax
	movzwl	%dx, %edx
	addl	$1, %eax
	movw	%ax, -176(%rbp,%rdx,2)
	movq	%rsp, %rax
	movq	%rax, %r12
	movzbl	-183(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %edx
	cmpw	$2, %dx
	jbe	L319
	movl	$777, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L319:
	leaq	-488(%rbp), %rax
	movq	%rax, -688(%rbp)
	leaq	lC8(%rip), %rax
	movq	%rax, -680(%rbp)
	movzwl	%dx, %eax
	movzwl	-176(%rbp,%rax,2), %eax
	movzwl	%ax, %ecx
	movq	-688(%rbp), %rbx
	movq	-680(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	cltq
	movq	%rax, -88(%rbp)
	movl	-76(%rbp), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movslq	%eax, %rsi
	movl	-76(%rbp), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movslq	%eax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-488(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	movq	%rsi, %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	_memcpy
	movq	%rsp, %rax
	movq	%rax, %rbx
	movzbl	-183(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %esi
	cmpw	$3, %si
	jbe	L320
	movl	$780, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Invalid_Data
L320:
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	L321
	movl	$780, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Access_Check
L321:
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	4(%rax), %ecx
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	jl	L322
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	4(%rax), %ecx
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	leal	1(%rdx), %eax
	jmp	L323
L322:
	movl	$0, %eax
L323:
	addl	$8, %eax
	leal	1(%rax), %edx
	cmpl	$1, -76(%rbp)
	jle	L324
	movl	-76(%rbp), %eax
	subl	$1, %eax
	jmp	L325
L324:
	movl	$0, %eax
L325:
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	cltq
	movq	%rax, -112(%rbp)
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -672(%rbp)
	movl	$2, -160(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -156(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -664(%rbp)
	leaq	lC67(%rip), %rax
	movq	%rax, -656(%rbp)
	leaq	lC3(%rip), %rax
	movq	%rax, -648(%rbp)
	movzwl	%si, %edx
	leaq	lC68(%rip), %rax
	movq	%rax, -640(%rbp)
	leaq	lC27(%rip), %rax
	movq	%rax, -632(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -624(%rbp)
	movl	$1, -152(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -148(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -616(%rbp)
	salq	$4, %rdx
	leaq	_axis_str.49(%rip), %rax
	leaq	(%rdx,%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	-624(%rbp), %r9
	movq	-616(%rbp), %r10
	movq	%r9, %rdi
	movq	%r10, %rsi
	pushq	-664(%rbp)
	pushq	-672(%rbp)
	pushq	-648(%rbp)
	pushq	-656(%rbp)
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	-640(%rbp), %rdx
	movq	-632(%rbp), %rcx
	call	_system__concat_4__str_concat_4
	addq	$32, %rsp
	movq	-120(%rbp), %rax
	movq	%rax, -608(%rbp)
	movl	$1, -144(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -140(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -600(%rbp)
	movq	-168(%rbp), %rcx
	movq	-608(%rbp), %rsi
	movq	-600(%rbp), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	movq	%rbx, %rsp
	movq	%r12, %rsp
	leaq	lC69(%rip), %rax
	movq	%rax, -592(%rbp)
	leaq	lC28(%rip), %rax
	movq	%rax, -584(%rbp)
	movq	-168(%rbp), %rcx
	movq	-592(%rbp), %rbx
	movq	-584(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	cmpl	$2147483643, -60(%rbp)
	jle	L326
	movl	$786, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
L326:
	movl	-60(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -60(%rbp)
	leaq	lC70(%rip), %rax
	movq	%rax, -576(%rbp)
	leaq	lC1(%rip), %rax
	movq	%rax, -568(%rbp)
	movq	-168(%rbp), %rcx
	movq	-576(%rbp), %rbx
	movq	-568(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put__3
	movl	-60(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -124(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-124(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jg	L327
	movl	-124(%rbp), %eax
	movl	%eax, -52(%rbp)
L328:
	leaq	-512(%rbp), %rax
	movq	%rax, -560(%rbp)
	leaq	lC10(%rip), %rax
	movq	%rax, -552(%rbp)
	movq	-560(%rbp), %rax
	movq	-552(%rbp), %rdx
	movq	%rax, %rcx
	movl	-52(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	_system__img_int__impl__image_integer
	movl	%eax, %edx
	leaq	-512(%rbp), %rax
	movq	%rax, -544(%rbp)
	movl	$1, -136(%rbp)
	movl	%edx, -132(%rbp)
	leaq	-136(%rbp), %rax
	movq	%rax, -536(%rbp)
	movq	-168(%rbp), %rcx
	movq	-544(%rbp), %rbx
	movq	-536(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put__3
	movl	-52(%rbp), %eax
	cmpl	-128(%rbp), %eax
	je	L327
	addl	$1, -52(%rbp)
	jmp	L328
L327:
	movq	-168(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ada__text_io__new_line
	jmp	L278
L412:
	nop
L278:
	movl	-56(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	L275
	addl	$1, -56(%rbp)
	jmp	L329
L275:
	leaq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_ada__text_io__close
	jmp	L403
L379:
	movq	%rax, -808(%rbp)
	movl	$0, %ebx
	jmp	L332
L292:
	movq	-808(%rbp), %rax
	movq	%rax, -712(%rbp)
	jmp	L333
L380:
	movq	%rax, -712(%rbp)
L333:
	movl	$0, %eax
	jmp	L334
L293:
	movq	-712(%rbp), %rax
	movq	%rax, %rdi
	call	__Unwind_Resume
L381:
	movq	%rax, -816(%rbp)
	movl	$0, %ebx
	jmp	L336
L294:
	movq	-816(%rbp), %rax
	movq	%rax, -720(%rbp)
	jmp	L337
L382:
	movq	%rax, -720(%rbp)
L337:
	movl	$0, %eax
	jmp	L338
L295:
	movq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	__Unwind_Resume
L383:
	movq	%rax, -824(%rbp)
	movl	$0, %ebx
	jmp	L340
L296:
	movq	-824(%rbp), %rax
	movq	%rax, -728(%rbp)
	jmp	L341
L384:
	movq	%rax, -728(%rbp)
L341:
	movl	$0, %eax
	jmp	L342
L297:
	movq	-728(%rbp), %rax
	movq	%rax, %rdi
	call	__Unwind_Resume
L385:
	movq	%rax, -832(%rbp)
	movl	$0, %ebx
	jmp	L344
L298:
	movq	-832(%rbp), %rax
	movq	%rax, -736(%rbp)
	jmp	L345
L386:
	movq	%rax, -736(%rbp)
L345:
	movl	$0, %eax
	jmp	L346
L299:
	movq	-736(%rbp), %rax
	movq	%rax, %rdi
	call	__Unwind_Resume
LEHE59:
L387:
	movq	%rax, %rbx
	movl	$0, %r12d
	nop
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
LEHB60:
	call	_view_cell_read_test__nodes_to_obj__L_3__B404b___finalizer.20
LEHE60:
	jmp	L404
L301:
	movq	%rbx, -744(%rbp)
	jmp	L349
L388:
	movq	%rax, -744(%rbp)
L349:
	movl	$0, %eax
	jmp	L350
L302:
	movq	-744(%rbp), %rax
	movq	%rax, %rdi
LEHB61:
	call	__Unwind_Resume
LEHE61:
L389:
	movq	%rax, %rbx
	movl	$0, %r12d
	nop
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
LEHB62:
	call	_view_cell_read_test__nodes_to_obj__L_3__B406b___finalizer.21
LEHE62:
	jmp	L405
L303:
	movq	%rbx, -752(%rbp)
	jmp	L353
L390:
	movq	%rax, -752(%rbp)
L353:
	movl	$0, %eax
	jmp	L354
L304:
	movq	-752(%rbp), %rax
	movq	%rax, %rdi
LEHB63:
	call	__Unwind_Resume
LEHE63:
L391:
	movq	%rax, %rbx
	movl	$0, %r12d
	nop
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
LEHB64:
	call	_view_cell_read_test__nodes_to_obj__L_3__B408b___finalizer.22
LEHE64:
	jmp	L406
L305:
	movq	%rbx, -760(%rbp)
	jmp	L357
L392:
	movq	%rax, -760(%rbp)
L357:
	movl	$0, %eax
	jmp	L358
L306:
	movq	-760(%rbp), %rax
	movq	%rax, %rdi
LEHB65:
	call	__Unwind_Resume
LEHE65:
L393:
	movq	%rax, %rbx
	movl	$0, %r12d
	nop
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
LEHB66:
	call	_view_cell_read_test__nodes_to_obj__L_3__B410b___finalizer.23
LEHE66:
	jmp	L407
L307:
	movq	%rbx, -768(%rbp)
	jmp	L361
L394:
	movq	%rax, -768(%rbp)
L361:
	movl	$0, %eax
	jmp	L362
L308:
	movq	-768(%rbp), %rax
	movq	%rax, %rdi
LEHB67:
	call	__Unwind_Resume
LEHE67:
L395:
	movq	%rax, %rbx
	movl	$0, %r12d
	nop
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
LEHB68:
	call	_view_cell_read_test__nodes_to_obj__L_3__B412b___finalizer.24
LEHE68:
	jmp	L408
L309:
	movq	%rbx, -776(%rbp)
	jmp	L365
L396:
	movq	%rax, -776(%rbp)
L365:
	movl	$0, %eax
	jmp	L366
L310:
	movq	-776(%rbp), %rax
	movq	%rax, %rdi
LEHB69:
	call	__Unwind_Resume
LEHE69:
L397:
	movq	%rax, %rbx
	movl	$0, %r12d
	nop
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
LEHB70:
	call	_view_cell_read_test__nodes_to_obj__L_3__B414b___finalizer.25
LEHE70:
	jmp	L409
L311:
	movq	%rbx, -784(%rbp)
	jmp	L369
L398:
	movq	%rax, -784(%rbp)
L369:
	movl	$0, %eax
	jmp	L370
L312:
	movq	-784(%rbp), %rax
	movq	%rax, %rdi
LEHB71:
	call	__Unwind_Resume
LEHE71:
L399:
	movq	%rax, %rbx
	movl	$0, %r12d
	nop
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
LEHB72:
	call	_view_cell_read_test__nodes_to_obj__L_3__B416b___finalizer.26
LEHE72:
	jmp	L410
L313:
	movq	%rbx, -792(%rbp)
	jmp	L373
L400:
	movq	%rax, -792(%rbp)
L373:
	movl	$0, %eax
	jmp	L374
L314:
	movq	-792(%rbp), %rax
	movq	%rax, %rdi
LEHB73:
	call	__Unwind_Resume
LEHE73:
L401:
	movq	%rax, %rbx
	movl	$0, %r12d
	nop
	leaq	-480(%rbp), %rax
	movq	%rax, %r10
LEHB74:
	call	_view_cell_read_test__nodes_to_obj__L_3__B418b___finalizer.27
LEHE74:
	jmp	L411
L315:
	movq	%rbx, -800(%rbp)
	jmp	L377
L402:
	movq	%rax, -800(%rbp)
L377:
	movl	$0, %eax
	jmp	L378
L316:
	movq	-800(%rbp), %rax
	movq	%rax, %rdi
LEHB75:
	call	__Unwind_Resume
L403:
	leaq	-40(%rbp), %rsp
LEHE75:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI37:
	ret
LFE20:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
LLSDA20:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE20-LLSDACSB20
LLSDACSB20:
	.uleb128 LEHB42-LFB20
	.uleb128 LEHE42-LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB43-LFB20
	.uleb128 LEHE43-LEHB43
	.uleb128 L379-LFB20
	.uleb128 0
	.uleb128 LEHB44-LFB20
	.uleb128 LEHE44-LEHB44
	.uleb128 L380-LFB20
	.uleb128 0
	.uleb128 LEHB45-LFB20
	.uleb128 LEHE45-LEHB45
	.uleb128 L381-LFB20
	.uleb128 0
	.uleb128 LEHB46-LFB20
	.uleb128 LEHE46-LEHB46
	.uleb128 L382-LFB20
	.uleb128 0
	.uleb128 LEHB47-LFB20
	.uleb128 LEHE47-LEHB47
	.uleb128 L383-LFB20
	.uleb128 0
	.uleb128 LEHB48-LFB20
	.uleb128 LEHE48-LEHB48
	.uleb128 L384-LFB20
	.uleb128 0
	.uleb128 LEHB49-LFB20
	.uleb128 LEHE49-LEHB49
	.uleb128 L385-LFB20
	.uleb128 0
	.uleb128 LEHB50-LFB20
	.uleb128 LEHE50-LEHB50
	.uleb128 L386-LFB20
	.uleb128 0
	.uleb128 LEHB51-LFB20
	.uleb128 LEHE51-LEHB51
	.uleb128 L387-LFB20
	.uleb128 0
	.uleb128 LEHB52-LFB20
	.uleb128 LEHE52-LEHB52
	.uleb128 L389-LFB20
	.uleb128 0
	.uleb128 LEHB53-LFB20
	.uleb128 LEHE53-LEHB53
	.uleb128 L391-LFB20
	.uleb128 0
	.uleb128 LEHB54-LFB20
	.uleb128 LEHE54-LEHB54
	.uleb128 L393-LFB20
	.uleb128 0
	.uleb128 LEHB55-LFB20
	.uleb128 LEHE55-LEHB55
	.uleb128 L395-LFB20
	.uleb128 0
	.uleb128 LEHB56-LFB20
	.uleb128 LEHE56-LEHB56
	.uleb128 L397-LFB20
	.uleb128 0
	.uleb128 LEHB57-LFB20
	.uleb128 LEHE57-LEHB57
	.uleb128 L399-LFB20
	.uleb128 0
	.uleb128 LEHB58-LFB20
	.uleb128 LEHE58-LEHB58
	.uleb128 L401-LFB20
	.uleb128 0
	.uleb128 LEHB59-LFB20
	.uleb128 LEHE59-LEHB59
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB60-LFB20
	.uleb128 LEHE60-LEHB60
	.uleb128 L388-LFB20
	.uleb128 0
	.uleb128 LEHB61-LFB20
	.uleb128 LEHE61-LEHB61
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB62-LFB20
	.uleb128 LEHE62-LEHB62
	.uleb128 L390-LFB20
	.uleb128 0
	.uleb128 LEHB63-LFB20
	.uleb128 LEHE63-LEHB63
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB64-LFB20
	.uleb128 LEHE64-LEHB64
	.uleb128 L392-LFB20
	.uleb128 0
	.uleb128 LEHB65-LFB20
	.uleb128 LEHE65-LEHB65
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB66-LFB20
	.uleb128 LEHE66-LEHB66
	.uleb128 L394-LFB20
	.uleb128 0
	.uleb128 LEHB67-LFB20
	.uleb128 LEHE67-LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB68-LFB20
	.uleb128 LEHE68-LEHB68
	.uleb128 L396-LFB20
	.uleb128 0
	.uleb128 LEHB69-LFB20
	.uleb128 LEHE69-LEHB69
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB70-LFB20
	.uleb128 LEHE70-LEHB70
	.uleb128 L398-LFB20
	.uleb128 0
	.uleb128 LEHB71-LFB20
	.uleb128 LEHE71-LEHB71
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB72-LFB20
	.uleb128 LEHE72-LEHB72
	.uleb128 L400-LFB20
	.uleb128 0
	.uleb128 LEHB73-LFB20
	.uleb128 LEHE73-LEHB73
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB74-LFB20
	.uleb128 LEHE74-LEHB74
	.uleb128 L402-LFB20
	.uleb128 0
	.uleb128 LEHB75-LFB20
	.uleb128 LEHE75-LEHB75
	.uleb128 0
	.uleb128 0
LLSDACSE20:
	.text
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__L_3__B396b___finalizer.15:
LFB22:
	pushq	%rbp
LCFI38:
	movq	%rsp, %rbp
LCFI39:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$264, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI40:
	ret
LFE22:
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__L_3__B398b___finalizer.16:
LFB23:
	pushq	%rbp
LCFI41:
	movq	%rsp, %rbp
LCFI42:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$240, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI43:
	ret
LFE23:
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__L_3__B400b___finalizer.17:
LFB24:
	pushq	%rbp
LCFI44:
	movq	%rsp, %rbp
LCFI45:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$216, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI46:
	ret
LFE24:
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__L_3__B402b___finalizer.19:
LFB25:
	pushq	%rbp
LCFI47:
	movq	%rsp, %rbp
LCFI48:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$192, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI49:
	ret
LFE25:
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__L_3__B404b___finalizer.20:
LFB26:
	pushq	%rbp
LCFI50:
	movq	%rsp, %rbp
LCFI51:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$168, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI52:
	ret
LFE26:
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__L_3__B406b___finalizer.21:
LFB27:
	pushq	%rbp
LCFI53:
	movq	%rsp, %rbp
LCFI54:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$144, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI55:
	ret
LFE27:
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__L_3__B408b___finalizer.22:
LFB28:
	pushq	%rbp
LCFI56:
	movq	%rsp, %rbp
LCFI57:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$120, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI58:
	ret
LFE28:
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__L_3__B410b___finalizer.23:
LFB29:
	pushq	%rbp
LCFI59:
	movq	%rsp, %rbp
LCFI60:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$96, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI61:
	ret
LFE29:
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__L_3__B412b___finalizer.24:
LFB30:
	pushq	%rbp
LCFI62:
	movq	%rsp, %rbp
LCFI63:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$72, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI64:
	ret
LFE30:
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__L_3__B414b___finalizer.25:
LFB31:
	pushq	%rbp
LCFI65:
	movq	%rsp, %rbp
LCFI66:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$48, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI67:
	ret
LFE31:
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__L_3__B416b___finalizer.26:
LFB32:
	pushq	%rbp
LCFI68:
	movq	%rsp, %rbp
LCFI69:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$24, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI70:
	ret
LFE32:
	.align 1,0x90
_view_cell_read_test__nodes_to_obj__L_3__B418b___finalizer.27:
LFB33:
	pushq	%rbp
LCFI71:
	movq	%rsp, %rbp
LCFI72:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI73:
	ret
LFE33:
	.const
lC71:
	.ascii "vc_nodes.txt"
lC72:
	.ascii "header"
lC73:
	.ascii "num view cells:"
lC74:
	.ascii "worldMin xyz"
lC75:
	.ascii "worldMax xyz"
lC76:
	.ascii "vc index (node):"
lC77:
	.ascii "vc index (leaf):"
lC78:
	.ascii "pvs offset:"
	.align 3
lC22:
	.long	1
	.long	15
	.align 3
lC25:
	.long	1
	.long	25
	.text
	.align 1,0x90
_view_cell_read_test__nodes_to_txt.12:
LFB34:
	pushq	%rbp
LCFI74:
	movq	%rsp, %rbp
LCFI75:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1256, %rsp
LCFI76:
	movq	%r10, -608(%rbp)
	movq	%r10, -600(%rbp)
	movq	$0, -240(%rbp)
	leaq	lC42(%rip), %rsi
	leaq	lC9(%rip), %rdi
	leaq	lC71(%rip), %rcx
	leaq	lC4(%rip), %rbx
	movq	-240(%rbp), %rax
	movq	%rsi, %r8
	movq	%rdi, %r9
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ada__text_io__create
	movq	%rax, -240(%rbp)
	leaq	lC72(%rip), %r12
	leaq	lC8(%rip), %r13
	movq	-240(%rbp), %rcx
	movq	%r12, %rdx
	movq	%r13, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	leaq	-272(%rbp), %rax
	movq	%rax, %r14
	leaq	lC10(%rip), %r15
	movq	-608(%rbp), %rax
	movl	4792(%rax), %ecx
	movq	%r14, %rdx
	movq	%r15, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	15(%rax), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, -1296(%rbp)
	movl	$1, -232(%rbp)
	movl	%edx, -228(%rbp)
	leaq	-232(%rbp), %rax
	movq	%rax, -1288(%rbp)
	leaq	lC73(%rip), %rax
	movq	%rax, -1280(%rbp)
	leaq	lC22(%rip), %rax
	movq	%rax, -1272(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -1264(%rbp)
	leaq	lC23(%rip), %rax
	movq	%rax, -1256(%rbp)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-1296(%rbp), %r8
	movq	-1288(%rbp), %r9
	movq	-1280(%rbp), %rdx
	movq	-1272(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$26, %ebx
	jle	L438
	movl	$820, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L438:
	leaq	-304(%rbp), %rax
	movq	%rax, -1248(%rbp)
	movl	$1, -224(%rbp)
	movl	%ebx, -220(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -1240(%rbp)
	movq	-240(%rbp), %rcx
	movq	-1248(%rbp), %rbx
	movq	-1240(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	leaq	lC74(%rip), %rax
	movq	%rax, -1232(%rbp)
	leaq	lC4(%rip), %rax
	movq	%rax, -1224(%rbp)
	movq	-240(%rbp), %rcx
	movq	-1232(%rbp), %rbx
	movq	-1224(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put__3
	movl	$1, %ebx
L440:
	cmpw	$3, %bx
	ja	L439
	leaq	-320(%rbp), %rax
	movq	%rax, -1216(%rbp)
	leaq	lC4(%rip), %rax
	movq	%rax, -1208(%rbp)
	movzwl	%bx, %eax
	addq	$1203, %rax
	movq	-608(%rbp), %rdi
	movl	4(%rdi,%rax,4), %eax
	movq	-1216(%rbp), %rdx
	movq	-1208(%rbp), %rcx
	movq	%rdx, %rsi
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %edx
	leaq	-320(%rbp), %rax
	movq	%rax, -1200(%rbp)
	movl	$1, -216(%rbp)
	movl	%edx, -212(%rbp)
	leaq	-216(%rbp), %rax
	movq	%rax, -1192(%rbp)
	movq	-240(%rbp), %rcx
	movq	-1200(%rbp), %rsi
	movq	-1192(%rbp), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	addl	$1, %ebx
	jmp	L440
L439:
	leaq	lC75(%rip), %rax
	movq	%rax, -1184(%rbp)
	leaq	lC4(%rip), %rax
	movq	%rax, -1176(%rbp)
	movq	-240(%rbp), %rcx
	movq	-1184(%rbp), %rbx
	movq	-1176(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put__3
	movl	$1, %ebx
L442:
	cmpw	$3, %bx
	ja	L441
	leaq	-336(%rbp), %rax
	movq	%rax, -1168(%rbp)
	leaq	lC4(%rip), %rax
	movq	%rax, -1160(%rbp)
	movzwl	%bx, %eax
	addq	$1207, %rax
	movq	-608(%rbp), %rdi
	movl	4(%rdi,%rax,4), %eax
	movq	-1168(%rbp), %rdx
	movq	-1160(%rbp), %rcx
	movq	%rdx, %rsi
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %edx
	leaq	-336(%rbp), %rax
	movq	%rax, -1152(%rbp)
	movl	$1, -208(%rbp)
	movl	%edx, -204(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -1144(%rbp)
	movq	-240(%rbp), %rcx
	movq	-1152(%rbp), %rsi
	movq	-1144(%rbp), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	addl	$1, %ebx
	jmp	L442
L441:
	movq	-240(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ada__text_io__new_line
	movq	-608(%rbp), %rax
	movl	4792(%rax), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	L443
	movl	$1, -52(%rbp)
L457:
	cmpl	$10000, -52(%rbp)
	jbe	L444
	movl	$839, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Index_Check
L444:
	movl	-52(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	-608(%rbp), %rdi
	addq	%rdi, %rax
	leaq	4906(%rax), %rdx
	movabsq	$281474976710655, %rax
	andq	4(%rdx), %rax
	movq	%rax, %rcx
	movq	-248(%rbp), %rdx
	movabsq	$-281474976710656, %rax
	andq	%rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -248(%rbp)
	movzwl	-248(%rbp), %eax
	testw	%ax, %ax
	je	L445
	leaq	-352(%rbp), %rax
	movq	%rax, -1136(%rbp)
	leaq	lC10(%rip), %rax
	movq	%rax, -1128(%rbp)
	movl	-52(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-1136(%rbp), %rbx
	movq	-1128(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	16(%rax), %ebx
	leaq	-352(%rbp), %rax
	movq	%rax, -1120(%rbp)
	movl	$1, -200(%rbp)
	movl	%edx, -196(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, -1112(%rbp)
	leaq	lC76(%rip), %rax
	movq	%rax, -1104(%rbp)
	leaq	lC7(%rip), %rax
	movq	%rax, -1096(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -1088(%rbp)
	leaq	lC11(%rip), %rax
	movq	%rax, -1080(%rbp)
	movq	-1088(%rbp), %rax
	movq	-1080(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-1120(%rbp), %r8
	movq	-1112(%rbp), %r9
	movq	-1104(%rbp), %rdx
	movq	-1096(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$27, %ebx
	jle	L446
	movl	$844, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L446:
	leaq	-384(%rbp), %rax
	movq	%rax, -1072(%rbp)
	movl	$1, -192(%rbp)
	movl	%ebx, -188(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -1064(%rbp)
	movq	-240(%rbp), %rcx
	movq	-1072(%rbp), %rbx
	movq	-1064(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	movq	-240(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ada__text_io__new_line
	movq	%rsp, %rax
	movq	%rax, %rbx
	movzbl	-247(%rbp), %eax
	shrb	$5, %al
	andl	$3, %eax
	movzbl	%al, %esi
	cmpw	$3, %si
	jbe	L447
	movl	$847, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Invalid_Data
L447:
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	L448
	movl	$847, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Access_Check
L448:
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	4(%rax), %ecx
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	jl	L449
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	4(%rax), %ecx
	movzwl	%si, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+_axis_str.49(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	leal	1(%rdx), %eax
	jmp	L450
L449:
	movl	$0, %eax
L450:
	addl	$12, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	cltq
	movq	%rax, -72(%rbp)
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	%rax, -80(%rbp)
	movzwl	%si, %edx
	leaq	lC59(%rip), %rax
	movq	%rax, -1056(%rbp)
	leaq	lC4(%rip), %rax
	movq	%rax, -1048(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1040(%rbp)
	movl	$1, -184(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -180(%rbp)
	leaq	-184(%rbp), %rax
	movq	%rax, -1032(%rbp)
	salq	$4, %rdx
	leaq	_axis_str.49(%rip), %rax
	leaq	(%rdx,%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	-1040(%rbp), %r9
	movq	-1032(%rbp), %r10
	movq	%r9, %rdi
	movq	%r10, %rsi
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	-1056(%rbp), %rdx
	movq	-1048(%rbp), %rcx
	call	_system__concat_2__str_concat_2
	movq	-80(%rbp), %rax
	movq	%rax, -1024(%rbp)
	movl	$1, -176(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -172(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -1016(%rbp)
	movq	-240(%rbp), %rcx
	movq	-1024(%rbp), %rsi
	movq	-1016(%rbp), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	movq	%rbx, %rsp
	movzwl	-244(%rbp), %eax
	movzwl	%ax, %edx
	movzbl	-245(%rbp), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%edx, %eax
	movl	%eax, -84(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, -1008(%rbp)
	leaq	lC10(%rip), %rax
	movq	%rax, -1000(%rbp)
	movq	-1008(%rbp), %rax
	movq	-1000(%rbp), %rdx
	movq	%rax, %rcx
	movl	-84(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	14(%rax), %ebx
	leaq	-400(%rbp), %rax
	movq	%rax, -992(%rbp)
	movl	$1, -168(%rbp)
	movl	%edx, -164(%rbp)
	leaq	-168(%rbp), %rax
	movq	%rax, -984(%rbp)
	leaq	lC60(%rip), %rax
	movq	%rax, -976(%rbp)
	leaq	lC24(%rip), %rax
	movq	%rax, -968(%rbp)
	leaq	-432(%rbp), %rax
	movq	%rax, -960(%rbp)
	leaq	lC25(%rip), %rax
	movq	%rax, -952(%rbp)
	movq	-960(%rbp), %rax
	movq	-952(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-992(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	-976(%rbp), %rdx
	movq	-968(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$25, %ebx
	jle	L451
	movl	$853, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L451:
	leaq	-432(%rbp), %rax
	movq	%rax, -944(%rbp)
	movl	$1, -160(%rbp)
	movl	%ebx, -156(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -936(%rbp)
	movq	-240(%rbp), %rcx
	movq	-944(%rbp), %rbx
	movq	-936(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	leaq	-440(%rbp), %rax
	movq	%rax, -928(%rbp)
	leaq	lC8(%rip), %rax
	movq	%rax, -920(%rbp)
	movzwl	-248(%rbp), %eax
	andw	$8191, %ax
	movzwl	%ax, %ecx
	movq	-928(%rbp), %rbx
	movq	-920(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	12(%rax), %ebx
	leaq	-440(%rbp), %rax
	movq	%rax, -912(%rbp)
	movl	$1, -152(%rbp)
	movl	%edx, -148(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -904(%rbp)
	leaq	lC61(%rip), %rax
	movq	%rax, -896(%rbp)
	leaq	lC4(%rip), %rax
	movq	%rax, -888(%rbp)
	leaq	-464(%rbp), %rax
	movq	%rax, -880(%rbp)
	leaq	lC26(%rip), %rax
	movq	%rax, -872(%rbp)
	movq	-880(%rbp), %rax
	movq	-872(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-912(%rbp), %r8
	movq	-904(%rbp), %r9
	movq	-896(%rbp), %rdx
	movq	-888(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$18, %ebx
	jle	L452
	movl	$856, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L452:
	leaq	-464(%rbp), %rax
	movq	%rax, -864(%rbp)
	movl	$1, -144(%rbp)
	movl	%ebx, -140(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -856(%rbp)
	movq	-240(%rbp), %rcx
	movq	-864(%rbp), %rbx
	movq	-856(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	movzwl	-246(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzbl	-247(%rbp), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	sall	$12, %eax
	orl	%edx, %eax
	movw	%ax, -86(%rbp)
	leaq	-472(%rbp), %rax
	movq	%rax, -848(%rbp)
	leaq	lC8(%rip), %rax
	movq	%rax, -840(%rbp)
	movzwl	-86(%rbp), %ecx
	movq	-848(%rbp), %rbx
	movq	-840(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	11(%rax), %ebx
	leaq	-472(%rbp), %rax
	movq	%rax, -832(%rbp)
	movl	$1, -136(%rbp)
	movl	%edx, -132(%rbp)
	leaq	-136(%rbp), %rax
	movq	%rax, -824(%rbp)
	leaq	lC62(%rip), %rax
	movq	%rax, -816(%rbp)
	leaq	lC10(%rip), %rax
	movq	%rax, -808(%rbp)
	leaq	-496(%rbp), %rax
	movq	%rax, -800(%rbp)
	leaq	lC6(%rip), %rax
	movq	%rax, -792(%rbp)
	movq	-800(%rbp), %rax
	movq	-792(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-832(%rbp), %r8
	movq	-824(%rbp), %r9
	movq	-816(%rbp), %rdx
	movq	-808(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$17, %ebx
	jle	L453
	movl	$861, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L453:
	leaq	-496(%rbp), %rax
	movq	%rax, -784(%rbp)
	movl	$1, -128(%rbp)
	movl	%ebx, -124(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -776(%rbp)
	movq	-240(%rbp), %rcx
	movq	-784(%rbp), %rbx
	movq	-776(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	movq	-240(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ada__text_io__new_line
	jmp	L454
L445:
	leaq	-512(%rbp), %rax
	movq	%rax, -768(%rbp)
	leaq	lC10(%rip), %rax
	movq	%rax, -760(%rbp)
	movl	-52(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-768(%rbp), %rbx
	movq	-760(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	16(%rax), %ebx
	leaq	-512(%rbp), %rax
	movq	%rax, -752(%rbp)
	movl	$1, -120(%rbp)
	movl	%edx, -116(%rbp)
	leaq	-120(%rbp), %rax
	movq	%rax, -744(%rbp)
	leaq	lC77(%rip), %rax
	movq	%rax, -736(%rbp)
	leaq	lC7(%rip), %rax
	movq	%rax, -728(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, -720(%rbp)
	leaq	lC11(%rip), %rax
	movq	%rax, -712(%rbp)
	movq	-720(%rbp), %rax
	movq	-712(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-752(%rbp), %r8
	movq	-744(%rbp), %r9
	movq	-736(%rbp), %rdx
	movq	-728(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$27, %ebx
	jle	L455
	movl	$870, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L455:
	leaq	-544(%rbp), %rax
	movq	%rax, -704(%rbp)
	movl	$1, -112(%rbp)
	movl	%ebx, -108(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -696(%rbp)
	movq	-240(%rbp), %rcx
	movq	-704(%rbp), %rbx
	movq	-696(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	movzwl	-246(%rbp), %eax
	movzwl	%ax, %edx
	movzbl	-244(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%edx, %eax
	movl	%eax, -60(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, -688(%rbp)
	leaq	lC10(%rip), %r15
	movq	%r15, -680(%rbp)
	movq	-688(%rbp), %rax
	movq	-680(%rbp), %rdx
	movq	%rax, %rcx
	movl	-60(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	_system__img_uns__impl__image_unsigned
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	11(%rax), %ebx
	leaq	-560(%rbp), %rax
	movq	%rax, -672(%rbp)
	movl	$1, -104(%rbp)
	movl	%edx, -100(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, -664(%rbp)
	leaq	lC78(%rip), %rax
	movq	%rax, -656(%rbp)
	movq	%r15, -648(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, -640(%rbp)
	leaq	lC17(%rip), %rax
	movq	%rax, -632(%rbp)
	movq	-640(%rbp), %rax
	movq	-632(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-672(%rbp), %r8
	movq	-664(%rbp), %r9
	movq	-656(%rbp), %rdx
	movq	-648(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$22, %ebx
	jle	L456
	movl	$875, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L456:
	leaq	-592(%rbp), %rax
	movq	%rax, -624(%rbp)
	movl	$1, -96(%rbp)
	movl	%ebx, -92(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -616(%rbp)
	movq	-240(%rbp), %rcx
	movq	-624(%rbp), %rbx
	movq	-616(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ada__text_io__put_line
	movq	-240(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ada__text_io__new_line
L454:
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	L443
	addl	$1, -52(%rbp)
	jmp	L457
L443:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ada__text_io__close
	nop
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI77:
	ret
LFE34:
	.align 1,0x90
_view_cell_read_test___finalizer.37:
LFB37:
	pushq	%rbp
LCFI78:
	movq	%rsp, %rbp
LCFI79:
	pushq	%r13
	pushq	%r12
	pushq	%rbx
LEHB76:
	subq	$56, %rsp
LCFI80:
	movq	%r10, %rbx
	movq	%r10, -72(%rbp)
	call	_ada__exceptions__triggered_by_abort
	movl	%eax, %r13d
	movl	$0, %r12d
	movq	_system__soft_links__abort_defer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	*%rax
LEHE76:
	movl	3776(%rbx), %eax
	cmpl	$1, %eax
	je	L463
	cmpl	$2, %eax
	je	L464
	jmp	L465
L464:
	leaq	2640(%rbx), %rax
	movl	$1, %esi
	movq	%rax, %rdi
LEHB77:
	call	_udp_streams__udp_stream_typeDF__2
LEHE77:
L463:
	leaq	2616(%rbx), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB78:
	call	_gnat__sockets__sock_addr_typeDF
LEHE78:
L465:
	movq	_system__soft_links__abort_undefer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
LEHB79:
	call	*%rax
	testb	%r12b, %r12b
	je	L459
	movl	%r13d, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L459
	movl	$25, %esi
	leaq	lC32(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_PE_Finalize_Raised_Exception
L472:
	cmpq	$1, %rdx
	je	L469
	movq	%rax, %rdi
	call	__Unwind_Resume
L469:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_begin_handler_v1
	movq	%rax, -48(%rbp)
	movl	$1, %r12d
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	___gnat_end_handler_v1
	jmp	L463
L473:
	cmpq	$2, %rdx
	je	L471
	movq	%rax, %rdi
	call	__Unwind_Resume
L471:
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_begin_handler_v1
	movq	%rax, -64(%rbp)
	movl	$1, %r12d
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	___gnat_end_handler_v1
	jmp	L465
L459:
	addq	$56, %rsp
LEHE79:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
LCFI81:
	ret
LFE37:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
	.align 2
LLSDA37:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT37-LLSDATTD37
LLSDATTD37:
	.byte	0x1
	.uleb128 LLSDACSE37-LLSDACSB37
LLSDACSB37:
	.uleb128 LEHB76-LFB37
	.uleb128 LEHE76-LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB77-LFB37
	.uleb128 LEHE77-LEHB77
	.uleb128 L472-LFB37
	.uleb128 0x1
	.uleb128 LEHB78-LFB37
	.uleb128 LEHE78-LEHB78
	.uleb128 L473-LFB37
	.uleb128 0x3
	.uleb128 LEHB79-LFB37
	.uleb128 LEHE79-LEHB79
	.uleb128 0
	.uleb128 0
LLSDACSE37:
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0
	.align 2
	.long	___gnat_others_value+4@GOTPCREL
	.long	___gnat_others_value+4@GOTPCREL
LLSDATT37:
	.text
	.align 1,0x90
_view_cell_read_test__v4t_image.35:
LFB38:
	pushq	%rbp
LCFI82:
	movq	%rsp, %rbp
LCFI83:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$312, %rsp
LCFI84:
	movaps	%xmm0, -192(%rbp)
	movq	%r10, -200(%rbp)
	movq	%rsp, %rax
	movq	%rax, -208(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
	leaq	lC4(%rip), %rbx
	movl	-192(%rbp), %eax
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, -340(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %r12
	leaq	lC4(%rip), %r13
	movl	-188(%rbp), %eax
	movq	%r12, %rsi
	movq	%r13, %rcx
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %r12d
	leaq	-160(%rbp), %rax
	movq	%rax, %r14
	leaq	lC4(%rip), %r15
	movl	-184(%rbp), %eax
	movq	%r14, %rsi
	movq	%r15, %rcx
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %ebx
	leaq	-176(%rbp), %rax
	movq	%rax, -336(%rbp)
	leaq	lC4(%rip), %rcx
	movq	%rcx, -328(%rbp)
	movl	-180(%rbp), %eax
	movq	-336(%rbp), %rdx
	movq	-328(%rbp), %rcx
	movq	%rdx, %rsi
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %esi
	movl	$0, %eax
	movl	-340(%rbp), %edi
	testl	%edi, %edi
	movl	%eax, %edx
	cmovns	%edi, %edx
	movl	$0, %eax
	testl	%r12d, %r12d
	cmovns	%r12d, %eax
	addl	%eax, %edx
	movl	$0, %eax
	testl	%ebx, %ebx
	cmovns	%ebx, %eax
	addl	%eax, %edx
	movl	$0, %eax
	testl	%esi, %esi
	cmovns	%esi, %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	$1, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cltq
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %r13
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	%rax, -72(%rbp)
	leaq	lC63(%rip), %rcx
	movq	%rcx, -320(%rbp)
	leaq	lC3(%rip), %rcx
	movq	%rcx, -312(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -304(%rbp)
	movl	$1, -112(%rbp)
	movl	%esi, -108(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -296(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -288(%rbp)
	movl	$1, -104(%rbp)
	movl	%ebx, -100(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, -280(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -272(%rbp)
	movl	$1, -96(%rbp)
	movl	%r12d, -92(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -264(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	$1, -88(%rbp)
	movl	%edi, -84(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-72(%rbp), %rbx
	movq	%rbx, -240(%rbp)
	movl	$1, -80(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -76(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-240(%rbp), %rcx
	movq	-232(%rbp), %rbx
	movq	%rcx, %rsi
	movq	%rbx, %rax
	pushq	-312(%rbp)
	pushq	-320(%rbp)
	pushq	-296(%rbp)
	pushq	-304(%rbp)
	pushq	-280(%rbp)
	pushq	-288(%rbp)
	movq	-272(%rbp), %r8
	movq	-264(%rbp), %r9
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_5__str_concat_5
	addq	$48, %rsp
	movl	-56(%rbp), %eax
	cltq
	addq	$11, %rax
	andq	$-4, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_allocate
	movq	%rax, %rbx
	movq	%rbx, %rax
	movl	$1, (%rax)
	movl	-56(%rbp), %edx
	movl	%edx, 4(%rax)
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movq	%r13, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_memcpy
	movq	%rbx, %rax
	addq	$8, %rax
	movq	%rax, -224(%rbp)
	movq	%rbx, %rax
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rsp
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI85:
	ret
LFE38:
	.align 1,0x90
_view_cell_read_test__B719b___finalizer.0:
LFB39:
	pushq	%rbp
LCFI86:
	movq	%rsp, %rbp
LCFI87:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$2592, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI88:
	ret
LFE39:
	.align 1,0x90
_view_cell_read_test__B732b___finalizer.1:
LFB40:
	pushq	%rbp
LCFI89:
	movq	%rsp, %rbp
LCFI90:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$2568, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI91:
	ret
LFE40:
	.align 1,0x90
_view_cell_read_test__B818b___finalizer.3:
LFB41:
	pushq	%rbp
LCFI92:
	movq	%rsp, %rbp
LCFI93:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$2544, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI94:
	ret
LFE41:
	.align 1,0x90
_view_cell_read_test__B824b___finalizer.4:
LFB42:
	pushq	%rbp
LCFI95:
	movq	%rsp, %rbp
LCFI96:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$2520, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI97:
	ret
LFE42:
	.align 1,0x90
_view_cell_read_test__B840b___finalizer.5:
LFB43:
	pushq	%rbp
LCFI98:
	movq	%rsp, %rbp
LCFI99:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$2496, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI100:
	ret
LFE43:
	.align 1,0x90
_view_cell_read_test__header_843SR__float_array_846SR.7:
LFB45:
	pushq	%rbp
LCFI101:
	movq	%rsp, %rbp
LCFI102:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
LCFI103:
	movq	%rdi, -56(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rsi, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -60(%rbp)
	movq	%r10, -88(%rbp)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %r13d
	movq	-72(%rbp), %rax
	movzwl	2(%rax), %edx
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	movq	-72(%rbp), %rax
	movzwl	2(%rax), %edx
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	movq	-72(%rbp), %rax
	movzwl	2(%rax), %edx
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	movq	-72(%rbp), %rax
	movzwl	(%rax), %ebx
	movq	-72(%rbp), %rax
	movzwl	2(%rax), %r12d
	cmpw	%bx, %r12w
	jb	L486
L494:
	movq	-80(%rbp), %r14
	movzwl	%bx, %r15d
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	%r15, %rdx
	subq	%r13, %rdx
	movl	%eax, (%r14,%rdx,4)
	cmpw	%r12w, %bx
	je	L486
	addl	$1, %ebx
	jmp	L494
L486:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI104:
	ret
LFE45:
	.const
	.align 1
lC21:
	.word	1
	.word	3
	.text
	.align 1,0x90
_view_cell_read_test__header_843SR.6:
LFB44:
	pushq	%rbp
LCFI105:
	movq	%rsp, %rbp
LCFI106:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
LCFI107:
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%r10, -96(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-84(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	movl	%edx, %ebx
	cmovle	%eax, %ebx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_u
	movq	-80(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_u
	movq	-80(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_u
	movq	-80(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_u
	movq	-80(%rbp), %rdx
	movl	%eax, 12(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_u
	movq	-80(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_u
	movq	-80(%rbp), %rdx
	movl	%eax, 20(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_u
	movq	-80(%rbp), %rdx
	movl	%eax, 24(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_u
	movq	-80(%rbp), %rdx
	movl	%eax, 28(%rdx)
	movq	-80(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %r14
	leaq	lC21(%rip), %r15
	movq	%r14, %rsi
	movq	%r15, %rdi
	movq	-72(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %r10
	movl	%ebx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_view_cell_read_test__header_843SR__float_array_846SR.7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_u
	movq	-80(%rbp), %rdx
	movl	%eax, 44(%rdx)
	movq	-80(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %r12
	leaq	lC21(%rip), %r13
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	-72(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %r10
	movl	%ebx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_view_cell_read_test__header_843SR__float_array_846SR.7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_u
	movq	-80(%rbp), %rdx
	movl	%eax, 60(%rdx)
	movq	-80(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-72(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %r10
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_view_cell_read_test__header_843SR__static_layer_item_num_852SR.8
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI108:
	ret
LFE44:
	.align 1,0x90
_view_cell_read_test__header_843SR__static_layer_item_num_852SR.8:
LFB46:
	pushq	%rbp
LCFI109:
	movq	%rsp, %rbp
LCFI110:
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
LCFI111:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%r10, -48(%rbp)
	movl	$0, %ebx
L500:
	movzbl	%bl, %r12d
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_u
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx,%r12,4)
	cmpb	$15, %bl
	je	L498
	addl	$1, %ebx
	jmp	L500
L498:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
LCFI112:
	ret
LFE46:
	.align 1,0x90
_view_cell_read_test__B_10__vc_buf_type_879SR.9:
LFB47:
	pushq	%rbp
LCFI113:
	movq	%rsp, %rbp
LCFI114:
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
LCFI115:
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%r10, -56(%rbp)
	movl	$1, %ebx
L504:
	cmpl	$3, %ebx
	jg	L505
	movslq	%ebx, %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_su
	leaq	-1(%r12), %rdx
	movw	%ax, -28(%rbp,%rdx,2)
	addl	$1, %ebx
	jmp	L504
L505:
	movl	-28(%rbp), %eax
	movl	%eax, -22(%rbp)
	movzwl	-24(%rbp), %eax
	movw	%ax, -18(%rbp)
	movl	$0, %eax
	movl	-22(%rbp), %edx
	movl	%edx, %ecx
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movzwl	-18(%rbp), %edx
	movzwl	%dx, %edx
	salq	$32, %rdx
	movabsq	$-281470681743361, %rcx
	andq	%rcx, %rax
	orq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
LCFI116:
	ret
LFE47:
	.align 1,0x90
_view_cell_read_test__L_9__view_cell_node_884SR.10:
LFB48:
	pushq	%rbp
LCFI117:
	movq	%rsp, %rbp
LCFI118:
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%r10, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_su
	andw	$8191, %ax
	andw	$8191, %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	andw	$-8192, %ax
	orl	%edx, %eax
	movw	%ax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_su
	andl	$3, %eax
	andl	$3, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	-11(%rbp), %eax
	andl	$-97, %eax
	orl	%edx, %eax
	movb	%al, -11(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_su
	andl	$1, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	-11(%rbp), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, -11(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_su
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-10(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -10(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_su
	andl	$15, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzbl	-9(%rbp), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movb	%al, -9(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_su
	movw	%ax, -8(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -6(%rbp)
	movzwl	-8(%rbp), %eax
	movw	%ax, -2(%rbp)
	movl	$0, %eax
	movl	-6(%rbp), %edx
	movl	%edx, %ecx
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movzwl	-2(%rbp), %edx
	movzwl	%dx, %edx
	salq	$32, %rdx
	movabsq	$-281470681743361, %rcx
	andq	%rcx, %rax
	orq	%rdx, %rax
	leave
LCFI119:
	ret
LFE48:
	.align 1,0x90
_view_cell_read_test__L_11__B905b___finalizer.11:
LFB49:
	pushq	%rbp
LCFI120:
	movq	%rsp, %rbp
LCFI121:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$2472, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI122:
	ret
LFE49:
	.align 1,0x90
_view_cell_read_test__L_11__B910b___finalizer.13:
LFB50:
	pushq	%rbp
LCFI123:
	movq	%rsp, %rbp
LCFI124:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$2448, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI125:
	ret
LFE50:
	.align 1,0x90
_view_cell_read_test__B915b___finalizer.28:
LFB51:
	pushq	%rbp
LCFI126:
	movq	%rsp, %rbp
LCFI127:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$2424, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI128:
	ret
LFE51:
	.align 1,0x90
_view_cell_read_test__L_12__telemetry_format_1_920SR.29:
LFB52:
	pushq	%rbp
LCFI129:
	movq	%rsp, %rbp
LCFI130:
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%r10, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 12(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 20(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 28(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 36(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 44(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 52(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 56(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 60(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 64(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 68(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 76(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 80(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 84(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 88(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 92(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 96(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 100(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 104(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 108(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 112(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 116(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 120(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 124(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 128(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 132(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 136(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 140(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 144(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_system__stream_attributes__i_f
	movd	%xmm0, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, 148(%rdx)
	leave
LCFI131:
	ret
LFE52:
	.align 1,0x90
_view_cell_read_test__L_12__B967b___finalizer.36:
LFB53:
	pushq	%rbp
LCFI132:
	movq	%rsp, %rbp
LCFI133:
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%r10, -8(%rbp)
	addq	$2400, %rax
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_release
	leave
LCFI134:
	ret
LFE53:
	.const
	.align 4
_in_vec.56:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.data
_no_leaf_errorF.55:
	.space 1
	.align 5
_view_cell_read_test__no_leaf_error.54:
	.byte	0
	.byte	65
	.space 2
	.long	34
	.quad	_no_leaf_errorE.51
	.quad	0
	.quad	0
	.quad	0
	.const
	.align 3
_non_blocking_request.53:
	.byte	0
	.space 3
	.byte	1
	.space 3
	.align 1
_nl.52:
	.ascii "\12\15"
	.align 5
_no_leaf_errorE.51:
	.ascii "VIEW_CELL_READ_TEST.NO_LEAF_ERROR\0"
	.align 5
_unit_vectors.50:
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.const_data
	.align 5
_axis_str.49:
	.quad	_as_x_axis___UNC.41+8
	.quad	_as_x_axis___UNC.41
	.quad	_as_y_axis___UNC.43+8
	.quad	_as_y_axis___UNC.43
	.quad	_as_z_axis___UNC.45+8
	.quad	_as_z_axis___UNC.45
	.quad	_as_invalid_axis___UNC.47+8
	.quad	_as_invalid_axis___UNC.47
	.align 3
_as_invalid_axis.48:
	.quad	_as_invalid_axis___UNC.47+8
	.const
	.align 4
_as_invalid_axis___UNC.47:
	.long	1
	.long	7
	.ascii "INVALID"
	.space 1
	.const_data
	.align 3
_as_z_axis.46:
	.quad	_as_z_axis___UNC.45+8
	.const
	.align 3
_as_z_axis___UNC.45:
	.long	1
	.long	1
	.ascii "z"
	.space 3
	.const_data
	.align 3
_as_y_axis.44:
	.quad	_as_y_axis___UNC.43+8
	.const
	.align 3
_as_y_axis___UNC.43:
	.long	1
	.long	1
	.ascii "y"
	.space 3
	.const_data
	.align 3
_as_x_axis.42:
	.quad	_as_x_axis___UNC.41+8
	.const
	.align 3
_as_x_axis___UNC.41:
	.long	1
	.long	1
	.ascii "x"
	.space 3
	.data
_obj_invalid_axis_errorF.40:
	.space 1
	.align 5
_view_cell_read_test__nodes_to_obj__obj_invalid_axis_error.39:
	.byte	0
	.byte	65
	.space 2
	.long	56
	.quad	_obj_invalid_axis_errorE.38
	.quad	0
	.quad	0
	.quad	0
	.const
	.align 5
_obj_invalid_axis_errorE.38:
	.ascii "VIEW_CELL_READ_TEST.NODES_TO_OBJ.OBJ_INVALID_AXIS_ERROR\0"
	.literal4
	.align 2
lC31:
	.long	897581064
	.align 2
lC34:
	.long	1065353216
	.literal16
	.align 4
lC35:
	.long	1113204982
	.long	1075478266
	.long	1137883385
	.long	1092616192
	.literal4
	.align 2
lC47:
	.long	1059360635
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zPLR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x10
	.uleb128 0x7
	.byte	0x9b
	.long	___gnat_personality_v0+4@GOTPCREL
	.byte	0x10
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
	.uleb128 0x8
	.quad	LLSDA1-.
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
	.byte	0x2e
	.uleb128 0x50
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x2e
	.uleb128 0
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x2e
	.uleb128 0x10
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0x2e
	.uleb128 0
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0x2e
	.uleb128 0x10
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0x2e
	.uleb128 0
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$13,LEFDE3-LASFDE3
	.long L$set$13
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB6-.
	.set L$set$14,LFE6-LFB6
	.quad L$set$14
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$15,LCFI10-LFB6
	.long L$set$15
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$16,LCFI11-LCFI10
	.long L$set$16
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$17,LCFI12-LCFI11
	.long L$set$17
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$18,LEFDE5-LASFDE5
	.long L$set$18
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB7-.
	.set L$set$19,LFE7-LFB7
	.quad L$set$19
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$20,LCFI13-LFB7
	.long L$set$20
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$21,LCFI14-LCFI13
	.long L$set$21
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$22,LCFI15-LCFI14
	.long L$set$22
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$23,LEFDE7-LASFDE7
	.long L$set$23
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB8-.
	.set L$set$24,LFE8-LFB8
	.quad L$set$24
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$25,LCFI16-LFB8
	.long L$set$25
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$26,LCFI17-LCFI16
	.long L$set$26
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$27,LCFI18-LCFI17
	.long L$set$27
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$28,LEFDE9-LASFDE9
	.long L$set$28
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB17-.
	.set L$set$29,LFE17-LFB17
	.quad L$set$29
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$30,LCFI19-LFB17
	.long L$set$30
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$31,LCFI20-LCFI19
	.long L$set$31
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$32,LCFI21-LCFI20
	.long L$set$32
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$33,LEFDE11-LASFDE11
	.long L$set$33
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB16-.
	.set L$set$34,LFE16-LFB16
	.quad L$set$34
	.uleb128 0x8
	.quad	LLSDA16-.
	.byte	0x4
	.set L$set$35,LCFI22-LFB16
	.long L$set$35
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$36,LCFI23-LCFI22
	.long L$set$36
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$37,LCFI24-LCFI23
	.long L$set$37
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
	.set L$set$38,LCFI25-LCFI24
	.long L$set$38
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$39,LEFDE13-LASFDE13
	.long L$set$39
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB19-.
	.set L$set$40,LFE19-LFB19
	.quad L$set$40
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$41,LCFI26-LFB19
	.long L$set$41
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$42,LCFI27-LCFI26
	.long L$set$42
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$43,LCFI28-LCFI27
	.long L$set$43
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.set L$set$44,LCFI29-LCFI28
	.long L$set$44
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$45,LEFDE15-LASFDE15
	.long L$set$45
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB21-.
	.set L$set$46,LFE21-LFB21
	.quad L$set$46
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$47,LCFI30-LFB21
	.long L$set$47
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$48,LCFI31-LCFI30
	.long L$set$48
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$49,LCFI32-LCFI31
	.long L$set$49
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
	.set L$set$50,LCFI33-LCFI32
	.long L$set$50
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$51,LEFDE17-LASFDE17
	.long L$set$51
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB20-.
	.set L$set$52,LFE20-LFB20
	.quad L$set$52
	.uleb128 0x8
	.quad	LLSDA20-.
	.byte	0x4
	.set L$set$53,LCFI34-LFB20
	.long L$set$53
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$54,LCFI35-LCFI34
	.long L$set$54
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$55,LCFI36-LCFI35
	.long L$set$55
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
	.set L$set$56,LCFI37-LCFI36
	.long L$set$56
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$57,LEFDE19-LASFDE19
	.long L$set$57
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB22-.
	.set L$set$58,LFE22-LFB22
	.quad L$set$58
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$59,LCFI38-LFB22
	.long L$set$59
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$60,LCFI39-LCFI38
	.long L$set$60
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$61,LCFI40-LCFI39
	.long L$set$61
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$62,LEFDE21-LASFDE21
	.long L$set$62
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB23-.
	.set L$set$63,LFE23-LFB23
	.quad L$set$63
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$64,LCFI41-LFB23
	.long L$set$64
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$65,LCFI42-LCFI41
	.long L$set$65
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$66,LCFI43-LCFI42
	.long L$set$66
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$67,LEFDE23-LASFDE23
	.long L$set$67
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB24-.
	.set L$set$68,LFE24-LFB24
	.quad L$set$68
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$69,LCFI44-LFB24
	.long L$set$69
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$70,LCFI45-LCFI44
	.long L$set$70
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$71,LCFI46-LCFI45
	.long L$set$71
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$72,LEFDE25-LASFDE25
	.long L$set$72
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB25-.
	.set L$set$73,LFE25-LFB25
	.quad L$set$73
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$74,LCFI47-LFB25
	.long L$set$74
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$75,LCFI48-LCFI47
	.long L$set$75
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$76,LCFI49-LCFI48
	.long L$set$76
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$77,LEFDE27-LASFDE27
	.long L$set$77
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB26-.
	.set L$set$78,LFE26-LFB26
	.quad L$set$78
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$79,LCFI50-LFB26
	.long L$set$79
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$80,LCFI51-LCFI50
	.long L$set$80
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$81,LCFI52-LCFI51
	.long L$set$81
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$82,LEFDE29-LASFDE29
	.long L$set$82
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB27-.
	.set L$set$83,LFE27-LFB27
	.quad L$set$83
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$84,LCFI53-LFB27
	.long L$set$84
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$85,LCFI54-LCFI53
	.long L$set$85
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$86,LCFI55-LCFI54
	.long L$set$86
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$87,LEFDE31-LASFDE31
	.long L$set$87
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB28-.
	.set L$set$88,LFE28-LFB28
	.quad L$set$88
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$89,LCFI56-LFB28
	.long L$set$89
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$90,LCFI57-LCFI56
	.long L$set$90
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$91,LCFI58-LCFI57
	.long L$set$91
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$92,LEFDE33-LASFDE33
	.long L$set$92
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB29-.
	.set L$set$93,LFE29-LFB29
	.quad L$set$93
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$94,LCFI59-LFB29
	.long L$set$94
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$95,LCFI60-LCFI59
	.long L$set$95
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$96,LCFI61-LCFI60
	.long L$set$96
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$97,LEFDE35-LASFDE35
	.long L$set$97
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB30-.
	.set L$set$98,LFE30-LFB30
	.quad L$set$98
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$99,LCFI62-LFB30
	.long L$set$99
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$100,LCFI63-LCFI62
	.long L$set$100
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$101,LCFI64-LCFI63
	.long L$set$101
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE35:
LSFDE37:
	.set L$set$102,LEFDE37-LASFDE37
	.long L$set$102
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB31-.
	.set L$set$103,LFE31-LFB31
	.quad L$set$103
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$104,LCFI65-LFB31
	.long L$set$104
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$105,LCFI66-LCFI65
	.long L$set$105
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$106,LCFI67-LCFI66
	.long L$set$106
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE37:
LSFDE39:
	.set L$set$107,LEFDE39-LASFDE39
	.long L$set$107
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB32-.
	.set L$set$108,LFE32-LFB32
	.quad L$set$108
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$109,LCFI68-LFB32
	.long L$set$109
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$110,LCFI69-LCFI68
	.long L$set$110
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$111,LCFI70-LCFI69
	.long L$set$111
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE39:
LSFDE41:
	.set L$set$112,LEFDE41-LASFDE41
	.long L$set$112
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB33-.
	.set L$set$113,LFE33-LFB33
	.quad L$set$113
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$114,LCFI71-LFB33
	.long L$set$114
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$115,LCFI72-LCFI71
	.long L$set$115
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$116,LCFI73-LCFI72
	.long L$set$116
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE41:
LSFDE43:
	.set L$set$117,LEFDE43-LASFDE43
	.long L$set$117
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB34-.
	.set L$set$118,LFE34-LFB34
	.quad L$set$118
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$119,LCFI74-LFB34
	.long L$set$119
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$120,LCFI75-LCFI74
	.long L$set$120
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$121,LCFI76-LCFI75
	.long L$set$121
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
	.set L$set$122,LCFI77-LCFI76
	.long L$set$122
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE43:
LSFDE45:
	.set L$set$123,LEFDE45-LASFDE45
	.long L$set$123
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB37-.
	.set L$set$124,LFE37-LFB37
	.quad L$set$124
	.uleb128 0x8
	.quad	LLSDA37-.
	.byte	0x4
	.set L$set$125,LCFI78-LFB37
	.long L$set$125
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$126,LCFI79-LCFI78
	.long L$set$126
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$127,LCFI80-LCFI79
	.long L$set$127
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.set L$set$128,LCFI81-LCFI80
	.long L$set$128
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE45:
LSFDE47:
	.set L$set$129,LEFDE47-LASFDE47
	.long L$set$129
LASFDE47:
	.long	LASFDE47-EH_frame1
	.quad	LFB38-.
	.set L$set$130,LFE38-LFB38
	.quad L$set$130
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$131,LCFI82-LFB38
	.long L$set$131
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$132,LCFI83-LCFI82
	.long L$set$132
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$133,LCFI84-LCFI83
	.long L$set$133
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
	.set L$set$134,LCFI85-LCFI84
	.long L$set$134
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE47:
LSFDE49:
	.set L$set$135,LEFDE49-LASFDE49
	.long L$set$135
LASFDE49:
	.long	LASFDE49-EH_frame1
	.quad	LFB39-.
	.set L$set$136,LFE39-LFB39
	.quad L$set$136
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$137,LCFI86-LFB39
	.long L$set$137
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$138,LCFI87-LCFI86
	.long L$set$138
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$139,LCFI88-LCFI87
	.long L$set$139
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE49:
LSFDE51:
	.set L$set$140,LEFDE51-LASFDE51
	.long L$set$140
LASFDE51:
	.long	LASFDE51-EH_frame1
	.quad	LFB40-.
	.set L$set$141,LFE40-LFB40
	.quad L$set$141
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$142,LCFI89-LFB40
	.long L$set$142
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$143,LCFI90-LCFI89
	.long L$set$143
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$144,LCFI91-LCFI90
	.long L$set$144
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE51:
LSFDE53:
	.set L$set$145,LEFDE53-LASFDE53
	.long L$set$145
LASFDE53:
	.long	LASFDE53-EH_frame1
	.quad	LFB41-.
	.set L$set$146,LFE41-LFB41
	.quad L$set$146
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$147,LCFI92-LFB41
	.long L$set$147
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$148,LCFI93-LCFI92
	.long L$set$148
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$149,LCFI94-LCFI93
	.long L$set$149
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE53:
LSFDE55:
	.set L$set$150,LEFDE55-LASFDE55
	.long L$set$150
LASFDE55:
	.long	LASFDE55-EH_frame1
	.quad	LFB42-.
	.set L$set$151,LFE42-LFB42
	.quad L$set$151
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$152,LCFI95-LFB42
	.long L$set$152
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$153,LCFI96-LCFI95
	.long L$set$153
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$154,LCFI97-LCFI96
	.long L$set$154
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE55:
LSFDE57:
	.set L$set$155,LEFDE57-LASFDE57
	.long L$set$155
LASFDE57:
	.long	LASFDE57-EH_frame1
	.quad	LFB43-.
	.set L$set$156,LFE43-LFB43
	.quad L$set$156
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$157,LCFI98-LFB43
	.long L$set$157
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$158,LCFI99-LCFI98
	.long L$set$158
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$159,LCFI100-LCFI99
	.long L$set$159
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE57:
LSFDE59:
	.set L$set$160,LEFDE59-LASFDE59
	.long L$set$160
LASFDE59:
	.long	LASFDE59-EH_frame1
	.quad	LFB45-.
	.set L$set$161,LFE45-LFB45
	.quad L$set$161
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$162,LCFI101-LFB45
	.long L$set$162
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$163,LCFI102-LCFI101
	.long L$set$163
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$164,LCFI103-LCFI102
	.long L$set$164
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
	.set L$set$165,LCFI104-LCFI103
	.long L$set$165
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE59:
LSFDE61:
	.set L$set$166,LEFDE61-LASFDE61
	.long L$set$166
LASFDE61:
	.long	LASFDE61-EH_frame1
	.quad	LFB44-.
	.set L$set$167,LFE44-LFB44
	.quad L$set$167
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$168,LCFI105-LFB44
	.long L$set$168
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$169,LCFI106-LCFI105
	.long L$set$169
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$170,LCFI107-LCFI106
	.long L$set$170
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
	.set L$set$171,LCFI108-LCFI107
	.long L$set$171
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE61:
LSFDE63:
	.set L$set$172,LEFDE63-LASFDE63
	.long L$set$172
LASFDE63:
	.long	LASFDE63-EH_frame1
	.quad	LFB46-.
	.set L$set$173,LFE46-LFB46
	.quad L$set$173
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$174,LCFI109-LFB46
	.long L$set$174
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$175,LCFI110-LCFI109
	.long L$set$175
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$176,LCFI111-LCFI110
	.long L$set$176
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.set L$set$177,LCFI112-LCFI111
	.long L$set$177
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE63:
LSFDE65:
	.set L$set$178,LEFDE65-LASFDE65
	.long L$set$178
LASFDE65:
	.long	LASFDE65-EH_frame1
	.quad	LFB47-.
	.set L$set$179,LFE47-LFB47
	.quad L$set$179
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$180,LCFI113-LFB47
	.long L$set$180
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$181,LCFI114-LCFI113
	.long L$set$181
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$182,LCFI115-LCFI114
	.long L$set$182
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.set L$set$183,LCFI116-LCFI115
	.long L$set$183
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE65:
LSFDE67:
	.set L$set$184,LEFDE67-LASFDE67
	.long L$set$184
LASFDE67:
	.long	LASFDE67-EH_frame1
	.quad	LFB48-.
	.set L$set$185,LFE48-LFB48
	.quad L$set$185
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$186,LCFI117-LFB48
	.long L$set$186
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$187,LCFI118-LCFI117
	.long L$set$187
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$188,LCFI119-LCFI118
	.long L$set$188
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE67:
LSFDE69:
	.set L$set$189,LEFDE69-LASFDE69
	.long L$set$189
LASFDE69:
	.long	LASFDE69-EH_frame1
	.quad	LFB49-.
	.set L$set$190,LFE49-LFB49
	.quad L$set$190
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$191,LCFI120-LFB49
	.long L$set$191
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$192,LCFI121-LCFI120
	.long L$set$192
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$193,LCFI122-LCFI121
	.long L$set$193
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE69:
LSFDE71:
	.set L$set$194,LEFDE71-LASFDE71
	.long L$set$194
LASFDE71:
	.long	LASFDE71-EH_frame1
	.quad	LFB50-.
	.set L$set$195,LFE50-LFB50
	.quad L$set$195
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$196,LCFI123-LFB50
	.long L$set$196
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$197,LCFI124-LCFI123
	.long L$set$197
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$198,LCFI125-LCFI124
	.long L$set$198
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE71:
LSFDE73:
	.set L$set$199,LEFDE73-LASFDE73
	.long L$set$199
LASFDE73:
	.long	LASFDE73-EH_frame1
	.quad	LFB51-.
	.set L$set$200,LFE51-LFB51
	.quad L$set$200
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$201,LCFI126-LFB51
	.long L$set$201
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$202,LCFI127-LCFI126
	.long L$set$202
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$203,LCFI128-LCFI127
	.long L$set$203
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE73:
LSFDE75:
	.set L$set$204,LEFDE75-LASFDE75
	.long L$set$204
LASFDE75:
	.long	LASFDE75-EH_frame1
	.quad	LFB52-.
	.set L$set$205,LFE52-LFB52
	.quad L$set$205
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$206,LCFI129-LFB52
	.long L$set$206
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$207,LCFI130-LCFI129
	.long L$set$207
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$208,LCFI131-LCFI130
	.long L$set$208
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE75:
LSFDE77:
	.set L$set$209,LEFDE77-LASFDE77
	.long L$set$209
LASFDE77:
	.long	LASFDE77-EH_frame1
	.quad	LFB53-.
	.set L$set$210,LFE53-LFB53
	.quad L$set$210
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$211,LCFI132-LFB53
	.long L$set$211
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$212,LCFI133-LCFI132
	.long L$set$212
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$213,LCFI134-LCFI133
	.long L$set$213
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE77:
	.ident	"GCC: (GNU) 14.1.0"
	.subsections_via_symbols
