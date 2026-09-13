	.build_version macos,  13, 0
	.text
	.align 1,0x90
_telemetry_read_test__datagram_stream_test_typeDI.6:
LFB2:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	movq	%rdi, -8(%rbp)
	movq	%r10, -16(%rbp)
	popq	%rbp
LCFI2:
	ret
LFE2:
	.const
lC23:
	.ascii "telemetry_read_test.adb"
	.space 1
	.cstring
	.align 3
lC24:
	.ascii "#: TELEMETRY_READ_TEST.DATAGRAM_STREAM_TEST_TYPE\0"
	.const
lC25:
	.ascii "Internal tag at 16#"
lC26:
	.ascii "z:"
lC27:
	.ascii "y:"
lC28:
	.ascii "x:"
	.align 3
lC0:
	.long	1
	.long	49
	.align 3
lC1:
	.long	1
	.long	19
	.align 3
lC2:
	.long	1
	.long	12
	.align 3
lC3:
	.long	1
	.long	2
	.align 3
lC4:
	.long	1
	.long	46
	.text
	.align 1,0x90
	.globl __ada_telemetry_read_test
__ada_telemetry_read_test:
LFB1:
	pushq	%rbp
LCFI3:
	movq	%rsp, %rbp
LCFI4:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
LEHB0:
	subq	$3272, %rsp
LEHE0:
LCFI5:
	leaq	16(%rbp), %rax
	movq	%rax, -1656(%rbp)
	leaq	-2896(%rbp), %rax
	addq	$1216, %rax
	leaq	-2896(%rbp), %rcx
	movq	%rax, %rdx
	leaq	_telemetry_read_test__datagram_stream_test_typeDF.9(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	___gcc_nested_func_ptr_created
	leaq	-2896(%rbp), %rax
	addq	$1232, %rax
	leaq	-2896(%rbp), %rcx
	movq	%rax, %rdx
	leaq	_telemetry_read_test___size.3(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	___gcc_nested_func_ptr_created
	leaq	-2896(%rbp), %rax
	addq	$1224, %rax
	leaq	-2896(%rbp), %rcx
	movq	%rax, %rdx
	leaq	_telemetry_read_test__datagram_stream_test_typePI.2(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	___gcc_nested_func_ptr_created
	leaq	-2896(%rbp), %rax
	addq	$1208, %rax
	leaq	-2896(%rbp), %rcx
	movq	%rax, %rdx
	leaq	_telemetry_read_test__read.1(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	___gcc_nested_func_ptr_created
	leaq	-2896(%rbp), %rax
	addq	$1200, %rax
	leaq	-2896(%rbp), %rcx
	movq	%rax, %rdx
	leaq	_telemetry_read_test__write.0(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	___gcc_nested_func_ptr_created
	movl	$0, %eax
	movl	%eax, -1704(%rbp)
	leaq	-2896(%rbp), %rax
	movq	%rax, %rdi
LEHB1:
	call	_system__secondary_stack__ss_mark
	movb	$0, -2872(%rbp)
	movzbl	-2872(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_gnat__sockets__sock_addr_typeD3
	testb	%al, %al
	je	L3
	movl	$194, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Discriminant_Check
L3:
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
	movq	%rax, -3000(%rbp)
	movl	-3000(%rbp), %eax
	movl	%eax, -2864(%rbp)
	movzbl	-2996(%rbp), %eax
	movb	%al, -2860(%rbp)
	movzbl	-2872(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_gnat__sockets__sock_addr_typeD3
	testb	%al, %al
	je	L4
	movl	$194, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Discriminant_Check
L4:
	movl	$20777, -2856(%rbp)
	movl	$1, %eax
	movl	%eax, -1704(%rbp)
	leaq	-272(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ada__tags__dispatch_table_wrapperIP
	leaq	-272(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -1712(%rbp)
	leaq	-272(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %r15
	movq	$0, -280(%rbp)
	movq	-1712(%rbp), %rax
	movq	%rax, %rdi
	call	__ada_system__address_image
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	%r13, %rax
	movl	4(%rax), %edx
	movq	%r13, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	L5
	movq	%r13, %rax
	movl	4(%rax), %edx
	movq	%r13, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	jmp	L6
L5:
	movl	$0, %eax
L6:
	leal	49(%rax), %edx
	testl	%eax, %eax
	je	L7
	movq	%r13, %rax
	movl	(%rax), %eax
	jmp	L8
L7:
	movl	$1, %eax
L8:
	movl	%eax, -52(%rbp)
	subl	$1, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	cltq
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	cltq
	movq	%rax, -72(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	cltq
	subq	%rax, %rdx
	leaq	1(%rdx), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_allocate
	movq	%rax, %r14
	movq	%r14, -80(%rbp)
	leaq	lC24(%rip), %rax
	movq	%rax, -3296(%rbp)
	leaq	lC0(%rip), %rax
	movq	%rax, -3288(%rbp)
	movq	%r14, -3280(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -212(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -208(%rbp)
	leaq	-212(%rbp), %rax
	movq	%rax, -3272(%rbp)
	movq	-3280(%rbp), %rax
	movq	-3272(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-3296(%rbp), %r8
	movq	-3288(%rbp), %r9
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	L9
	movl	-56(%rbp), %eax
	subl	-52(%rbp), %eax
	addl	$1, %eax
	jmp	L10
L9:
	movl	$0, %eax
L10:
	addl	$19, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cltq
	movq	%rax, -96(%rbp)
	movl	-84(%rbp), %eax
	cltq
	movl	$1, %esi
	movq	%rax, %rdi
	call	_system__secondary_stack__ss_allocate
	movq	%rax, %rbx
	movq	%rbx, -104(%rbp)
	movq	%r14, -3264(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -204(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -200(%rbp)
	leaq	-204(%rbp), %rax
	movq	%rax, -3256(%rbp)
	leaq	lC25(%rip), %rax
	movq	%rax, -3248(%rbp)
	leaq	lC1(%rip), %rax
	movq	%rax, -3240(%rbp)
	movq	%rbx, -3232(%rbp)
	movl	$1, -196(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -192(%rbp)
	leaq	-196(%rbp), %rax
	movq	%rax, -3224(%rbp)
	movq	-3232(%rbp), %rax
	movq	-3224(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-3264(%rbp), %r8
	movq	-3256(%rbp), %r9
	movq	-3248(%rbp), %rdx
	movq	-3240(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	movl	$1, -368(%rbp)
	movl	$1, -364(%rbp)
	movl	$8, -360(%rbp)
	leaq	_datagram_stream_test_typeE12b.11(%rip), %rax
	movq	%rax, -352(%rbp)
	movq	%rbx, -344(%rbp)
	leaq	-280(%rbp), %rax
	movq	%rax, -336(%rbp)
	movb	$0, -328(%rbp)
	movb	$0, -327(%rbp)
	movb	$1, -326(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	_ada__streams__root_stream_typeT@GOTPCREL(%rip), %rax
	leaq	32(%rax), %rax
	movq	%rax, -288(%rbp)
	leaq	-464(%rbp), %rsi
	movl	$0, %eax
	movl	$11, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movl	$1, -464(%rbp)
	movl	$10, -460(%rbp)
	leaq	-464(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	leaq	-368(%rbp), %rax
	movl	$2, -272(%rbp)
	movb	$1, -268(%rbp)
	movb	$2, -267(%rbp)
	movq	%rdx, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	%rax, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	-1712(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	_ada__streams__root_stream_typeT@GOTPCREL(%rip), %rax
	leaq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movq	%r15, %rax
	movq	(%rax), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_memmove
	movq	-1712(%rbp), %rax
	movq	%rax, %rdi
	call	_ada__tags__dt
	movq	%rax, %rbx
	movq	_ada__streams__root_stream_typeT@GOTPCREL(%rip), %rax
	leaq	32(%rax), %rax
	movq	%rax, %rdi
	call	_ada__tags__dt
	leaq	32(%rax), %rcx
	leaq	32(%rbx), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_memmove
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	_ada__tags__check_tsd
	movq	%r15, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-1664(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-1712(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-1664(%rbp), %rax
	movq	%rax, 48(%rdx)
	movq	%r15, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-1672(%rbp), %rax
	movq	%rax, 72(%rdx)
	movq	%r15, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-1680(%rbp), %rax
	movq	%rax, 64(%rdx)
	movq	-1712(%rbp), %rdx
	movq	-1688(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-1712(%rbp), %rdx
	movq	-1696(%rbp), %rax
	movq	%rax, 8(%rdx)
LEHE1:
	movq	$0, -112(%rbp)
	movq	_system__soft_links__abort_defer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
LEHB2:
	call	*%rax
	leaq	-2896(%rbp), %rax
	leaq	48(%rax), %rdi
	leaq	-2896(%rbp), %rax
	movq	%rax, %r10
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1024, %esi
	call	_telemetry_read_test__datagram_stream_test_typeIP.4
LEHE2:
	leaq	-2896(%rbp), %rax
	leaq	48(%rax), %rdx
	leaq	-2896(%rbp), %rax
	movq	%rax, %r10
	movq	%rdx, %rdi
LEHB3:
	call	_telemetry_read_test__datagram_stream_test_typeDI.6
LEHE3:
	movl	$2, %eax
	movl	%eax, -1704(%rbp)
	movl	$1, %ebx
L22:
LEHB4:
	call	_system__standard_library__abort_undefer_direct
	cmpl	$1, %ebx
	jne	L11
	nop
	movb	$0, -137(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	$1, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	_gnat__sockets__create_socket
	movl	%eax, -156(%rbp)
	leaq	-2896(%rbp), %rax
	leaq	24(%rax), %rdx
	movl	-156(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gnat__sockets__bind_socket
	movl	-156(%rbp), %edx
	movq	_gnat__sockets__no_sock_addr@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	_gnat__sockets__stream__2
	movq	%rax, -112(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, -2832(%rbp)
L13:
	leaq	-1648(%rbp), %rsi
	leaq	-2896(%rbp), %rax
	leaq	48(%rax), %rcx
	leaq	-2896(%rbp), %rax
	movq	%rax, %r10
	movl	$1, %edx
	movq	%rcx, %rdi
	call	_telemetry_read_test__L_1__telemetry_format_1_313SR.7
	leaq	-2912(%rbp), %rax
	movq	%rax, -3216(%rbp)
	leaq	lC2(%rip), %r14
	movq	%r14, -3208(%rbp)
	movl	-1632(%rbp), %eax
	movq	-3216(%rbp), %rcx
	movq	-3208(%rbp), %rbx
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %r12d
	leaq	-2928(%rbp), %rax
	movq	%rax, -3200(%rbp)
	movq	%r14, -3192(%rbp)
	movl	-1628(%rbp), %eax
	movq	-3200(%rbp), %rcx
	movq	-3192(%rbp), %rbx
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %ebx
	leaq	-2944(%rbp), %rax
	movq	%rax, -3184(%rbp)
	movq	%r14, -3176(%rbp)
	movl	-1624(%rbp), %eax
	movq	-3184(%rbp), %rdx
	movq	-3176(%rbp), %rcx
	movq	%rdx, %rsi
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movd	%eax, %xmm0
	call	_system__img_flt__impl__image_floating_point
	movl	%eax, %ecx
	movl	$0, %eax
	testl	%r12d, %r12d
	cmovns	%r12d, %eax
	addl	$2, %eax
	addl	$2, %eax
	leal	2(%rax), %edx
	movl	$0, %eax
	testl	%ebx, %ebx
	cmovns	%ebx, %eax
	addl	%edx, %eax
	addl	$2, %eax
	leal	2(%rax), %edx
	movl	$0, %eax
	testl	%ecx, %ecx
	cmovns	%ecx, %eax
	leal	(%rdx,%rax), %r13d
	leaq	-2944(%rbp), %rax
	movq	%rax, -3168(%rbp)
	movl	$1, -188(%rbp)
	movl	%ecx, -184(%rbp)
	leaq	-188(%rbp), %rax
	movq	%rax, -3160(%rbp)
	leaq	lC26(%rip), %rax
	movq	%rax, -3152(%rbp)
	leaq	lC3(%rip), %rdi
	movq	%rdi, -3144(%rbp)
	leaq	_nl.10(%rip), %rsi
	movq	%rsi, -3136(%rbp)
	movq	%rdi, -3128(%rbp)
	leaq	-2928(%rbp), %rax
	movq	%rax, -3120(%rbp)
	movl	$1, -180(%rbp)
	movl	%ebx, -176(%rbp)
	leaq	-180(%rbp), %rax
	movq	%rax, -3112(%rbp)
	leaq	lC27(%rip), %rax
	movq	%rax, -3104(%rbp)
	movq	%rdi, %rbx
	movq	%rbx, -3096(%rbp)
	movq	%rsi, -3088(%rbp)
	movq	%rbx, -3080(%rbp)
	leaq	-2912(%rbp), %rax
	movq	%rax, -3072(%rbp)
	movl	$1, -172(%rbp)
	movl	%r12d, -168(%rbp)
	leaq	-172(%rbp), %rax
	movq	%rax, -3064(%rbp)
	leaq	lC28(%rip), %rax
	movq	%rax, -3056(%rbp)
	movq	%rbx, -3048(%rbp)
	leaq	-2992(%rbp), %rax
	movq	%rax, -3040(%rbp)
	leaq	lC4(%rip), %rax
	movq	%rax, -3032(%rbp)
	movq	-3040(%rbp), %rax
	movq	-3032(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	pushq	-3160(%rbp)
	pushq	-3168(%rbp)
	pushq	-3144(%rbp)
	pushq	-3152(%rbp)
	pushq	-3128(%rbp)
	pushq	-3136(%rbp)
	pushq	-3112(%rbp)
	pushq	-3120(%rbp)
	pushq	-3096(%rbp)
	pushq	-3104(%rbp)
	pushq	-3080(%rbp)
	pushq	-3088(%rbp)
	movq	-3072(%rbp), %r8
	movq	-3064(%rbp), %r9
	movq	-3056(%rbp), %rdx
	movq	-3048(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
LCFI6:
	call	_system__concat_8__str_concat_8
	addq	$96, %rsp
	cmpl	$46, %r13d
	jle	L12
	movl	$356, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
LCFI7:
	call	___gnat_rcheck_CE_Range_Check
L12:
	leaq	-2992(%rbp), %rax
	movq	%rax, -3024(%rbp)
	movl	$1, -164(%rbp)
	movl	%r13d, -160(%rbp)
	leaq	-164(%rbp), %rax
	movq	%rax, -3016(%rbp)
	movq	-3024(%rbp), %rbx
	movq	-3016(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
LEHE4:
	jmp	L13
L36:
	cmpl	$1, %r12d
	je	L14
	movl	$0, %eax
L26:
	cmpl	$1, %eax
	je	L15
	movl	$0, %ebx
L28:
	call	___gcc_nested_func_ptr_deleted
	call	___gcc_nested_func_ptr_deleted
	call	___gcc_nested_func_ptr_deleted
	call	___gcc_nested_func_ptr_deleted
	call	___gcc_nested_func_ptr_deleted
	cmpl	$1, %ebx
	je	L16
	jmp	L35
L32:
	movq	%rax, %rcx
	movq	%rdx, %rax
	cmpq	$1, %rax
	je	L19
	movq	%rcx, -3008(%rbp)
	jmp	L20
L19:
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_begin_handler_v1
	movq	%rax, -128(%rbp)
	leaq	-2896(%rbp), %rax
	leaq	48(%rax), %rdx
	leaq	-2896(%rbp), %rax
	movq	%rax, %r10
	movl	$0, %esi
	movq	%rdx, %rdi
LEHB5:
	call	_telemetry_read_test__datagram_stream_test_typeDF.9
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_reraise_zcx
LEHE5:
L33:
	movq	%rax, %rbx
	movq	%rbx, -136(%rbp)
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
LEHB6:
	call	___gnat_end_handler_v1
LEHE6:
	movq	%rbx, -3008(%rbp)
	jmp	L20
L31:
	movq	%rax, -3008(%rbp)
L20:
	movl	$0, %ebx
	jmp	L22
L11:
	movq	-3008(%rbp), %rbx
	jmp	L23
L30:
	movq	%rax, %rbx
L23:
	movl	$1, %r12d
	nop
	leaq	-2896(%rbp), %rax
	movq	%rax, %r10
LEHB7:
	call	_telemetry_read_test___finalizer.8
LEHE7:
	jmp	L36
L14:
	movq	%rbx, -3304(%rbp)
	jmp	L25
L34:
	movq	%rax, -3304(%rbp)
L25:
	movl	$1, %eax
	jmp	L26
L15:
	movq	-3304(%rbp), %rax
	movq	%rax, -3312(%rbp)
L29:
	movl	$1, %ebx
	jmp	L28
L16:
	movq	-3312(%rbp), %rax
	movq	%rax, %rdi
LEHB8:
	call	__Unwind_Resume
L35:
	leaq	-40(%rbp), %rsp
LEHE8:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI8:
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
	.uleb128 L30-LFB1
	.uleb128 0
	.uleb128 LEHB2-LFB1
	.uleb128 LEHE2-LEHB2
	.uleb128 L31-LFB1
	.uleb128 0
	.uleb128 LEHB3-LFB1
	.uleb128 LEHE3-LEHB3
	.uleb128 L32-LFB1
	.uleb128 0x3
	.uleb128 LEHB4-LFB1
	.uleb128 LEHE4-LEHB4
	.uleb128 L30-LFB1
	.uleb128 0
	.uleb128 LEHB5-LFB1
	.uleb128 LEHE5-LEHB5
	.uleb128 L33-LFB1
	.uleb128 0
	.uleb128 LEHB6-LFB1
	.uleb128 LEHE6-LEHB6
	.uleb128 L31-LFB1
	.uleb128 0
	.uleb128 LEHB7-LFB1
	.uleb128 LEHE7-LEHB7
	.uleb128 L34-LFB1
	.uleb128 0
	.uleb128 LEHB8-LFB1
	.uleb128 LEHE8-LEHB8
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
_telemetry_read_test__datagram_stream_test_typeDF.9:
LFB3:
	pushq	%rbp
LCFI9:
	movq	%rsp, %rbp
LCFI10:
	pushq	%r12
	pushq	%rbx
LEHB9:
	subq	$64, %rsp
LCFI11:
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movb	%al, -60(%rbp)
	movq	%r10, -72(%rbp)
	call	_ada__exceptions__triggered_by_abort
LEHE9:
	movl	%eax, %r12d
	movl	$0, %ebx
	movq	-56(%rbp), %rax
	addq	$56, %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB10:
	call	_gnat__sockets__sock_addr_typeDF
LEHE10:
L42:
	movq	-56(%rbp), %rax
	addq	$24, %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB11:
	call	_gnat__sockets__sock_addr_typeDF
LEHE11:
L45:
	testb	%bl, %bl
	je	L37
	movl	%r12d, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L37
	movl	$200, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
LEHB12:
	call	___gnat_rcheck_PE_Finalize_Raised_Exception
L46:
	cmpq	$1, %rdx
	je	L41
	movq	%rax, %rdi
	call	__Unwind_Resume
L41:
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_begin_handler_v1
	movq	%rax, -32(%rbp)
	movl	$1, %ebx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	___gnat_end_handler_v1
	jmp	L42
L47:
	cmpq	$2, %rdx
	je	L44
	movq	%rax, %rdi
	call	__Unwind_Resume
L44:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_begin_handler_v1
	movq	%rax, -48(%rbp)
	movl	$1, %ebx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	___gnat_end_handler_v1
	jmp	L45
L37:
	addq	$64, %rsp
LEHE12:
	popq	%rbx
	popq	%r12
	popq	%rbp
LCFI12:
	ret
LFE3:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
	.align 2
LLSDA3:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT3-LLSDATTD3
LLSDATTD3:
	.byte	0x1
	.uleb128 LLSDACSE3-LLSDACSB3
LLSDACSB3:
	.uleb128 LEHB9-LFB3
	.uleb128 LEHE9-LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB10-LFB3
	.uleb128 LEHE10-LEHB10
	.uleb128 L46-LFB3
	.uleb128 0x1
	.uleb128 LEHB11-LFB3
	.uleb128 LEHE11-LEHB11
	.uleb128 L47-LFB3
	.uleb128 0x3
	.uleb128 LEHB12-LFB3
	.uleb128 LEHE12-LEHB12
	.uleb128 0
	.uleb128 0
LLSDACSE3:
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0
	.align 2
	.long	___gnat_others_value+4@GOTPCREL
	.long	___gnat_others_value+4@GOTPCREL
LLSDATT3:
	.text
	.align 1,0x90
_telemetry_read_test__datagram_stream_test_typeIP___finalizer.5:
LFB6:
	pushq	%rbp
LCFI13:
	movq	%rsp, %rbp
LCFI14:
	pushq	%r13
	pushq	%r12
	pushq	%rbx
LEHB13:
	subq	$72, %rsp
LCFI15:
	movq	%rdi, -72(%rbp)
	movl	%esi, %eax
	movb	%al, -76(%rbp)
	movq	%r10, %r13
	movq	%r10, -88(%rbp)
	call	_ada__exceptions__triggered_by_abort
LEHE13:
	movl	%eax, %r12d
	movl	$0, %ebx
	movl	0(%r13), %eax
	cmpl	$1, %eax
	je	L52
	cmpl	$2, %eax
	jne	L53
L51:
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB14:
	call	_gnat__sockets__sock_addr_typeDF
LEHE14:
L52:
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB15:
	call	_gnat__sockets__sock_addr_typeDF
LEHE15:
L53:
	testb	%bl, %bl
	je	L48
	movl	%r12d, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L48
	movl	$200, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
LEHB16:
	call	___gnat_rcheck_PE_Finalize_Raised_Exception
L60:
	cmpq	$1, %rdx
	je	L57
	movq	%rax, %rdi
	call	__Unwind_Resume
L57:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_begin_handler_v1
	movq	%rax, -48(%rbp)
	movl	$1, %ebx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	___gnat_end_handler_v1
	jmp	L52
L61:
	cmpq	$2, %rdx
	je	L59
	movq	%rax, %rdi
	call	__Unwind_Resume
L59:
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_begin_handler_v1
	movq	%rax, -64(%rbp)
	movl	$1, %ebx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	___gnat_end_handler_v1
	jmp	L53
L48:
	addq	$72, %rsp
LEHE16:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
LCFI16:
	ret
LFE6:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
	.align 2
LLSDA6:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT6-LLSDATTD6
LLSDATTD6:
	.byte	0x1
	.uleb128 LLSDACSE6-LLSDACSB6
LLSDACSB6:
	.uleb128 LEHB13-LFB6
	.uleb128 LEHE13-LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB14-LFB6
	.uleb128 LEHE14-LEHB14
	.uleb128 L60-LFB6
	.uleb128 0x1
	.uleb128 LEHB15-LFB6
	.uleb128 LEHE15-LEHB15
	.uleb128 L61-LFB6
	.uleb128 0x3
	.uleb128 LEHB16-LFB6
	.uleb128 LEHE16-LEHB16
	.uleb128 0
	.uleb128 0
LLSDACSE6:
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0
	.align 2
	.long	___gnat_others_value+4@GOTPCREL
	.long	___gnat_others_value+4@GOTPCREL
LLSDATT6:
	.text
	.align 1,0x90
_telemetry_read_test__datagram_stream_test_typeIP.4:
LFB5:
	pushq	%rbp
LCFI17:
	movq	%rsp, %rbp
LCFI18:
	pushq	%rbx
LEHB17:
	subq	$88, %rsp
LEHE17:
LCFI19:
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	%ecx, -88(%rbp)
	movq	%r10, %rax
	movq	%r10, -96(%rbp)
	leaq	16(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movl	$0, %edx
	movl	%edx, -64(%rbp)
	cmpl	$0, -84(%rbp)
	jne	L63
	movq	1184(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
L63:
	cmpl	$3, -84(%rbp)
	je	L64
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB18:
	call	_ada__streams__root_stream_typeIP
L64:
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpl	$3, -84(%rbp)
	je	L62
	movq	_gnat__sockets__no_sock_addr@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9__ada_telemetry_read_test
	addq	$15, %rax
	andq	$-8, %rax
	movq	-72(%rbp), %rdx
	leaq	24(%rdx), %rcx
	movq	_gnat__sockets__no_sock_addr@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_memcpy
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_gnat__sockets__sock_addr_typeDA
	movl	-64(%rbp), %eax
	cmpl	$2147483647, %eax
	jne	L66
	movl	$202, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
L66:
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	_gnat__sockets__no_sock_addr@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9__ada_telemetry_read_test
	addq	$15, %rax
	andq	$-8, %rax
	movq	-72(%rbp), %rdx
	leaq	56(%rdx), %rcx
	movq	_gnat__sockets__no_sock_addr@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_memcpy
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_gnat__sockets__sock_addr_typeDA
	movl	-64(%rbp), %eax
	cmpl	$2147483647, %eax
	jne	L67
	movl	$203, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
LEHE18:
L67:
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	$1, 88(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 104(%rax)
	jmp	L62
L72:
	cmpq	$1, %rdx
	je	L70
	movq	%rax, %rdi
LEHB19:
	call	__Unwind_Resume
LEHE19:
L70:
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_begin_handler_v1
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %r10
	movl	$0, %esi
	movq	%rax, %rdi
LEHB20:
	call	_telemetry_read_test__datagram_stream_test_typeIP___finalizer.5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_reraise_zcx
LEHE20:
L73:
	movq	%rax, %rbx
	movq	%rbx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
LEHB21:
	call	___gnat_end_handler_v1
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	__Unwind_Resume
L62:
	movq	-8(%rbp), %rbx
	leave
LCFI20:
LEHE21:
	ret
LFE5:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
	.align 2
LLSDA5:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT5-LLSDATTD5
LLSDATTD5:
	.byte	0x1
	.uleb128 LLSDACSE5-LLSDACSB5
LLSDACSB5:
	.uleb128 LEHB17-LFB5
	.uleb128 LEHE17-LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB18-LFB5
	.uleb128 LEHE18-LEHB18
	.uleb128 L72-LFB5
	.uleb128 0x1
	.uleb128 LEHB19-LFB5
	.uleb128 LEHE19-LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB20-LFB5
	.uleb128 LEHE20-LEHB20
	.uleb128 L73-LFB5
	.uleb128 0
	.uleb128 LEHB21-LFB5
	.uleb128 LEHE21-LEHB21
	.uleb128 0
	.uleb128 0
LLSDACSE5:
	.byte	0x1
	.byte	0
	.align 2
	.long	___gnat_others_value+4@GOTPCREL
LLSDATT5:
	.text
	.align 1,0x90
_telemetry_read_test___size.3:
LFB7:
	pushq	%rbp
LCFI21:
	movq	%rsp, %rbp
LCFI22:
	movq	%rdi, -8(%rbp)
	movq	%r10, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	addq	$108, %rax
	salq	$3, %rax
	addq	$63, %rax
	andq	$-64, %rax
	popq	%rbp
LCFI23:
	ret
LFE7:
	.cstring
	.align 3
lC29:
	.ascii "TELEMETRY_READ_TEST.DATAGRAM_STREAM_TEST_TYPE\0"
	.text
	.align 1,0x90
_telemetry_read_test__datagram_stream_test_typePI.2:
LFB8:
	pushq	%rbp
LCFI24:
	movq	%rsp, %rbp
LCFI25:
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r10, -24(%rbp)
	leaq	lC29(%rip), %rax
	leaq	lC4(%rip), %rdx
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_system__put_images__put_image_unknown
	leave
LCFI26:
	ret
LFE8:
	.const
lC30:
	.ascii "receive_socket"
lC31:
	.ascii "after receive_socket"
	.align 3
lC32:
	.ascii "temporary. failed to read fro dg socket"
lC33:
	.ascii "from buffer"
lC34:
	.ascii "item first and last:"
lC35:
	.ascii "se_buffer first and last:"
lC36:
	.ascii "self full_last:"
lC37:
	.ascii "self first:"
lC38:
	.ascii "end of buffer data"
	.align 3
lC15:
	.long	1
	.long	14
	.align 3
lC6:
	.long	1
	.long	20
	.align 3
lC16:
	.long	1
	.long	39
	.align 3
lC9:
	.long	1
	.long	11
	.align 3
lC17:
	.long	1
	.long	60
	.align 3
lC18:
	.long	1
	.long	25
	.align 3
lC19:
	.long	1
	.long	65
	.align 3
lC20:
	.long	1
	.long	15
	.align 3
lC21:
	.long	1
	.long	35
	.align 3
lC10:
	.long	1
	.long	31
	.align 3
lC22:
	.long	1
	.long	18
	.text
	.align 1,0x90
_telemetry_read_test__read.1:
LFB11:
	pushq	%rbp
LCFI27:
	movq	%rsp, %rbp
LCFI28:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$872, %rsp
LCFI29:
	movq	%rdi, -456(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rcx
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rcx, %rdx
	movq	%rax, -480(%rbp)
	movq	%rdx, -472(%rbp)
	movq	%r10, -464(%rbp)
	movq	-472(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	movq	-472(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	movq	-472(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	movq	-456(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	L85
	leaq	lC30(%rip), %r8
	leaq	lC15(%rip), %r9
	movq	%r8, %rdx
	movq	%r9, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	movq	-456(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-456(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-456(%rbp), %rax
	addq	$108, %rax
	movq	%rax, -912(%rbp)
	movq	$1, -144(%rbp)
	movq	%rdx, -136(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -904(%rbp)
	movq	-456(%rbp), %rax
	movl	16(%rax), %eax
	movq	-912(%rbp), %r9
	movq	-904(%rbp), %r10
	movq	%r9, %rsi
	movq	%r10, %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%eax, %edi
	call	_gnat__sockets__receive_socket__2
	movq	%rax, %rdx
	movq	-456(%rbp), %rax
	movq	%rdx, 96(%rax)
	leaq	lC31(%rip), %r12
	leaq	lC6(%rip), %r13
	movq	%r12, %rdx
	movq	%r13, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	movq	-456(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	L85
	leaq	lC32(%rip), %r14
	leaq	lC16(%rip), %r15
	movq	%r14, %rdx
	movq	%r15, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	_gnat__sockets__socket_error@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_raise_exception
L85:
	leaq	lC33(%rip), %rax
	movq	%rax, -896(%rbp)
	leaq	lC9(%rip), %rax
	movq	%rax, -888(%rbp)
	movq	-896(%rbp), %rbx
	movq	-888(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	leaq	-176(%rbp), %rax
	movq	%rax, -880(%rbp)
	leaq	lC6(%rip), %r15
	movq	%r15, -872(%rbp)
	movq	-472(%rbp), %rax
	movq	(%rax), %rcx
	movq	-880(%rbp), %rbx
	movq	-872(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_system__img_lli__impl__image_integer
	movl	%eax, %ebx
	leaq	-208(%rbp), %rax
	movq	%rax, -864(%rbp)
	movq	%r15, -856(%rbp)
	movq	-472(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-864(%rbp), %rsi
	movq	-856(%rbp), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_system__img_lli__impl__image_integer
	movl	%eax, %edx
	movl	$0, %eax
	testl	%ebx, %ebx
	cmovns	%ebx, %eax
	leal	20(%rax), %ecx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	(%rcx,%rax), %r12d
	leaq	-208(%rbp), %rax
	movq	%rax, -848(%rbp)
	movl	$1, -128(%rbp)
	movl	%edx, -124(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -840(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -832(%rbp)
	movl	$1, -120(%rbp)
	movl	%ebx, -116(%rbp)
	leaq	-120(%rbp), %rax
	movq	%rax, -824(%rbp)
	leaq	lC34(%rip), %rax
	movq	%rax, -816(%rbp)
	movq	%r15, -808(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, -800(%rbp)
	leaq	lC17(%rip), %rax
	movq	%rax, -792(%rbp)
	movq	-800(%rbp), %rax
	movq	-792(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	pushq	-840(%rbp)
	pushq	-848(%rbp)
	movq	-832(%rbp), %r8
	movq	-824(%rbp), %r9
	movq	-816(%rbp), %rdx
	movq	-808(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_3__str_concat_3
	addq	$16, %rsp
	cmpl	$60, %r12d
	jle	L86
	movl	$248, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L86:
	leaq	-448(%rbp), %rax
	movq	%rax, -784(%rbp)
	movl	$1, -112(%rbp)
	movl	%r12d, -108(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -776(%rbp)
	movq	-784(%rbp), %rbx
	movq	-776(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	leaq	-240(%rbp), %rax
	movq	%rax, -768(%rbp)
	leaq	lC6(%rip), %r14
	movq	%r14, -760(%rbp)
	movq	-768(%rbp), %rbx
	movq	-760(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	$1, %edi
	call	_system__img_lli__impl__image_integer
	movl	%eax, %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, -752(%rbp)
	movq	%r14, -744(%rbp)
	movq	-456(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-752(%rbp), %rsi
	movq	-744(%rbp), %rdi
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_system__img_lli__impl__image_integer
	movl	%eax, %edx
	movl	$0, %eax
	testl	%ebx, %ebx
	cmovns	%ebx, %eax
	leal	25(%rax), %ecx
	movl	$0, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	leal	(%rcx,%rax), %r12d
	leaq	-272(%rbp), %rax
	movq	%rax, -736(%rbp)
	movl	$1, -104(%rbp)
	movl	%edx, -100(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, -728(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -720(%rbp)
	movl	$1, -96(%rbp)
	movl	%ebx, -92(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -712(%rbp)
	leaq	lC35(%rip), %rax
	movq	%rax, -704(%rbp)
	leaq	lC18(%rip), %rax
	movq	%rax, -696(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, -688(%rbp)
	leaq	lC19(%rip), %rax
	movq	%rax, -680(%rbp)
	movq	-688(%rbp), %rax
	movq	-680(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	pushq	-728(%rbp)
	pushq	-736(%rbp)
	movq	-720(%rbp), %r8
	movq	-712(%rbp), %r9
	movq	-704(%rbp), %rdx
	movq	-696(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_3__str_concat_3
	addq	$16, %rsp
	cmpl	$65, %r12d
	jle	L87
	movl	$249, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L87:
	leaq	-448(%rbp), %rax
	movq	%rax, -672(%rbp)
	movl	$1, -88(%rbp)
	movl	%r12d, -84(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, -664(%rbp)
	movq	-672(%rbp), %rbx
	movq	-664(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	leaq	-304(%rbp), %rax
	movq	%rax, -656(%rbp)
	leaq	lC6(%rip), %rax
	movq	%rax, -648(%rbp)
	movq	-456(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-656(%rbp), %rbx
	movq	-648(%rbp), %rsi
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
	leal	15(%rax), %ebx
	leaq	-304(%rbp), %rax
	movq	%rax, -640(%rbp)
	movl	$1, -80(%rbp)
	movl	%edx, -76(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -632(%rbp)
	leaq	lC36(%rip), %rax
	movq	%rax, -624(%rbp)
	leaq	lC20(%rip), %rax
	movq	%rax, -616(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, -608(%rbp)
	leaq	lC21(%rip), %rax
	movq	%rax, -600(%rbp)
	movq	-608(%rbp), %rax
	movq	-600(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-640(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	-624(%rbp), %rdx
	movq	-616(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$35, %ebx
	jle	L88
	movl	$250, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L88:
	leaq	-448(%rbp), %rax
	movq	%rax, -592(%rbp)
	movl	$1, -72(%rbp)
	movl	%ebx, -68(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -584(%rbp)
	movq	-592(%rbp), %rbx
	movq	-584(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	leaq	-336(%rbp), %rax
	movq	%rax, -576(%rbp)
	leaq	lC6(%rip), %rax
	movq	%rax, -568(%rbp)
	movq	-456(%rbp), %rax
	movq	88(%rax), %rax
	movq	-576(%rbp), %rbx
	movq	-568(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_system__img_lli__impl__image_integer
	movl	$0, %edx
	testl	%eax, %eax
	cmovns	%eax, %edx
	leal	11(%rdx), %ebx
	leaq	-336(%rbp), %rdx
	movq	%rdx, -560(%rbp)
	movl	$1, -64(%rbp)
	movl	%eax, -60(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -552(%rbp)
	leaq	lC37(%rip), %rax
	movq	%rax, -544(%rbp)
	leaq	lC9(%rip), %rax
	movq	%rax, -536(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -528(%rbp)
	leaq	lC10(%rip), %rax
	movq	%rax, -520(%rbp)
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	-560(%rbp), %r8
	movq	-552(%rbp), %r9
	movq	-544(%rbp), %rdx
	movq	-536(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_system__concat_2__str_concat_2
	cmpl	$31, %ebx
	jle	L89
	movl	$251, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L89:
	leaq	-368(%rbp), %rax
	movq	%rax, -512(%rbp)
	movl	$1, -56(%rbp)
	movl	%ebx, -52(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	-512(%rbp), %rbx
	movq	-504(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	movq	-456(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-472(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jl	L90
	movq	-472(%rbp), %rax
	movq	8(%rax), %rax
	cqto
	movq	-472(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rbx
	sarq	$63, %rbx
	subq	%rcx, %rax
	sbbq	%rbx, %rdx
	addq	$1, %rax
	adcq	$0, %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	jmp	L91
L90:
	movl	$0, %ecx
	movl	$0, %ebx
L91:
	movabsq	$9223372036854775807, %rax
	movl	$0, %edx
	cmpq	%rcx, %rax
	movq	%rdx, %rax
	sbbq	%rbx, %rax
	jge	L92
	movl	$253, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L92:
	movq	-456(%rbp), %rax
	movq	88(%rax), %rax
	movq	-456(%rbp), %rdx
	movq	88(%rdx), %rdi
	movq	%rcx, %rdx
	subq	$1, %rdx
	movl	$0, %ecx
	addq	%rdi, %rdx
	jno	L93
	movl	$1, %ecx
L93:
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	testq	%rdx, %rdx
	je	L95
	movl	$253, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
L95:
	movq	%rdi, %rdx
	cmpq	%rax, %rdx
	jl	L96
	testq	%rax, %rax
	jle	L97
	cmpq	%rsi, %rdx
	jle	L96
L97:
	movl	$253, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L96:
	cmpq	%rax, %rdx
	cmpq	%rax, %rdx
	cmpq	%rax, %rdx
	jl	L102
	movq	%rdx, %rcx
	movq	%rax, %rsi
	subq	%rsi, %rcx
	leaq	1(%rcx), %r10
	jmp	L103
L102:
	movl	$0, %r10d
L103:
	movq	-472(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-472(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, %rsi
	jl	L104
	movq	-472(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rbx
	sarq	$63, %rbx
	movq	-472(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	sarq	$63, %rdi
	subq	%rsi, %rcx
	sbbq	%rdi, %rbx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	addq	$1, %rsi
	adcq	$0, %rdi
	jmp	L105
L104:
	movl	$0, %esi
	movl	$0, %edi
L105:
	cmpq	%rax, %rdx
	jl	L106
	movq	%rdx, %rcx
	movq	%rdx, %rbx
	sarq	$63, %rbx
	movq	%rax, %r8
	movq	%rax, %r9
	sarq	$63, %r9
	subq	%r8, %rcx
	sbbq	%r9, %rbx
	addq	$1, %rcx
	adcq	$0, %rbx
	jmp	L107
L106:
	movl	$0, %ecx
	movl	$0, %ebx
L107:
	movq	%rsi, %rdx
	xorq	%rcx, %rdx
	xorq	%rbx, %rdi
	movq	%rdi, %rcx
	orq	%rcx, %rdx
	je	L108
	movl	$253, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Length_Check
L108:
	movq	-480(%rbp), %rdx
	leaq	95(%rax), %rcx
	movq	-456(%rbp), %rax
	addq	%rcx, %rax
	addq	$12, %rax
	movq	%rdx, %rcx
	movq	%r10, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_memcpy
	movq	-472(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-456(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	addq	%rdx, %rax
	jno	L109
	movl	$1, %ecx
L109:
	movq	%rax, %rdx
	movq	%rcx, %rax
	testq	%rax, %rax
	je	L111
	movl	$256, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
L111:
	movq	-456(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, %rdx
	jg	L112
	movq	-456(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	addq	%rdx, %rax
	jno	L113
	movl	$1, %ecx
L113:
	movq	%rax, %rdx
	movq	%rcx, %rax
	testq	%rax, %rax
	je	L115
	movl	$257, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
L115:
	movq	-456(%rbp), %rax
	movq	%rdx, 88(%rax)
	jmp	L119
L112:
	leaq	lC38(%rip), %rax
	movq	%rax, -496(%rbp)
	leaq	lC22(%rip), %rax
	movq	%rax, -488(%rbp)
	movq	-496(%rbp), %rbx
	movq	-488(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ada__text_io__put_line__2
	movq	-456(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-456(%rbp), %rax
	movq	$1, 88(%rax)
L119:
	nop
	movq	-152(%rbp), %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI30:
	ret
LFE11:
	.const
	.align 3
lC39:
	.ascii "temporary. faild to write to datagram socket"
	.align 3
lC5:
	.long	1
	.long	44
	.text
	.align 1,0x90
_telemetry_read_test__write.0:
LFB14:
	pushq	%rbp
LCFI31:
	movq	%rsp, %rbp
LCFI32:
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
LCFI33:
	movq	%rdi, -56(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rcx
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rcx, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%r10, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rbx
	cmpq	%rax, %rbx
	cmpq	%rax, %rbx
	cmpq	%rax, %rbx
	movq	-56(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	$0, %r8d
	movl	%eax, %edi
	call	_gnat__sockets__send_socket__3
	movq	%rax, -40(%rbp)
	cmpq	-40(%rbp), %rbx
	je	L129
	leaq	lC39(%rip), %r12
	leaq	lC5(%rip), %r13
	movq	%r12, %rdx
	movq	%r13, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	_gnat__sockets__socket_error@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_raise_exception
L129:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
LCFI34:
	ret
LFE14:
	.align 1,0x90
_telemetry_read_test___finalizer.8:
LFB15:
	pushq	%rbp
LCFI35:
	movq	%rsp, %rbp
LCFI36:
	pushq	%r13
	pushq	%r12
	pushq	%rbx
LEHB22:
	subq	$56, %rsp
LCFI37:
	movq	%r10, %rbx
	movq	%r10, -72(%rbp)
	call	_ada__exceptions__triggered_by_abort
	movl	%eax, %r13d
	movl	$0, %r12d
	movq	_system__soft_links__abort_defer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	*%rax
LEHE22:
	movl	1192(%rbx), %eax
	cmpl	$1, %eax
	je	L134
	cmpl	$2, %eax
	je	L135
	jmp	L136
L135:
	leaq	48(%rbx), %rax
	movq	%rbx, %r10
	movl	$1, %esi
	movq	%rax, %rdi
LEHB23:
	call	_telemetry_read_test__datagram_stream_test_typeDF.9
LEHE23:
L134:
	leaq	24(%rbx), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB24:
	call	_gnat__sockets__sock_addr_typeDF
LEHE24:
L136:
	movq	%rbx, %rax
	movq	%rax, %rdi
LEHB25:
	call	_system__secondary_stack__ss_release
	movq	_system__soft_links__abort_undefer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	*%rax
	testb	%r12b, %r12b
	je	L130
	movl	%r13d, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L130
	movl	$11, %esi
	leaq	lC23(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_PE_Finalize_Raised_Exception
L143:
	cmpq	$1, %rdx
	je	L140
	movq	%rax, %rdi
	call	__Unwind_Resume
L140:
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
	jmp	L134
L144:
	cmpq	$2, %rdx
	je	L142
	movq	%rax, %rdi
	call	__Unwind_Resume
L142:
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
	jmp	L136
L130:
	addq	$56, %rsp
LEHE25:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
LCFI38:
	ret
LFE15:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
	.align 2
LLSDA15:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT15-LLSDATTD15
LLSDATTD15:
	.byte	0x1
	.uleb128 LLSDACSE15-LLSDACSB15
LLSDACSB15:
	.uleb128 LEHB22-LFB15
	.uleb128 LEHE22-LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB23-LFB15
	.uleb128 LEHE23-LEHB23
	.uleb128 L143-LFB15
	.uleb128 0x1
	.uleb128 LEHB24-LFB15
	.uleb128 LEHE24-LEHB24
	.uleb128 L144-LFB15
	.uleb128 0x3
	.uleb128 LEHB25-LFB15
	.uleb128 LEHE25-LEHB25
	.uleb128 0
	.uleb128 0
LLSDACSE15:
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0
	.align 2
	.long	___gnat_others_value+4@GOTPCREL
	.long	___gnat_others_value+4@GOTPCREL
LLSDATT15:
	.text
	.align 1,0x90
_telemetry_read_test__L_1__telemetry_format_1_313SR.7:
LFB17:
	pushq	%rbp
LCFI39:
	movq	%rsp, %rbp
LCFI40:
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
LCFI41:
	ret
LFE17:
	.align 1,0x90
__GLOBAL__SZ7__ada_telemetry_read_test:
LFB25:
	pushq	%rbp
LCFI42:
	movq	%rsp, %rbp
LCFI43:
	pushq	%rbx
LCFI44:
	movb	%dil, -17(%rbp)
	cmpb	$0, -17(%rbp)
	jne	L148
	movl	$4, %eax
	jmp	L150
L148:
	movl	$16, %eax
L150:
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
LCFI45:
	ret
LFE25:
	.align 1,0x90
__GLOBAL__SZ9__ada_telemetry_read_test:
LFB27:
	pushq	%rbp
LCFI46:
	movq	%rsp, %rbp
LCFI47:
	pushq	%rbx
	subq	$24, %rsp
LCFI48:
	movb	%dil, -17(%rbp)
	cmpb	$2, -17(%rbp)
	je	L152
	cmpb	$1, -17(%rbp)
	ja	L153
	movzbl	-17(%rbp), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ7__ada_telemetry_read_test
	addq	$4, %rax
	andq	$-4, %rax
	addq	$11, %rax
	andq	$-8, %rax
	jmp	L156
L153:
	movl	$0, %eax
	jmp	L156
L152:
	movl	$16, %eax
L156:
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
LCFI49:
	ret
LFE27:
	.const
	.align 5
_datagram_stream_test_typeE12b.11:
	.ascii "TELEMETRY_READ_TEST.DATAGRAM_STREAM_TEST_TYPE\0"
	.align 1
_nl.10:
	.ascii "\12\15"
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
	.quad	LFB2-.
	.set L$set$2,LFE2-LFB2
	.quad L$set$2
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB2
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
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$6,LEFDE3-LASFDE3
	.long L$set$6
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB1-.
	.set L$set$7,LFE1-LFB1
	.quad L$set$7
	.uleb128 0x8
	.quad	LLSDA1-.
	.byte	0x4
	.set L$set$8,LCFI3-LFB1
	.long L$set$8
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$9,LCFI4-LCFI3
	.long L$set$9
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$10,LCFI5-LCFI4
	.long L$set$10
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
	.set L$set$11,LCFI6-LCFI5
	.long L$set$11
	.byte	0x2e
	.uleb128 0x60
	.byte	0x4
	.set L$set$12,LCFI7-LCFI6
	.long L$set$12
	.byte	0x2e
	.uleb128 0
	.byte	0x4
	.set L$set$13,LCFI8-LCFI7
	.long L$set$13
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$14,LEFDE5-LASFDE5
	.long L$set$14
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB3-.
	.set L$set$15,LFE3-LFB3
	.quad L$set$15
	.uleb128 0x8
	.quad	LLSDA3-.
	.byte	0x4
	.set L$set$16,LCFI9-LFB3
	.long L$set$16
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$17,LCFI10-LCFI9
	.long L$set$17
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$18,LCFI11-LCFI10
	.long L$set$18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.set L$set$19,LCFI12-LCFI11
	.long L$set$19
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$20,LEFDE7-LASFDE7
	.long L$set$20
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB6-.
	.set L$set$21,LFE6-LFB6
	.quad L$set$21
	.uleb128 0x8
	.quad	LLSDA6-.
	.byte	0x4
	.set L$set$22,LCFI13-LFB6
	.long L$set$22
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$23,LCFI14-LCFI13
	.long L$set$23
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$24,LCFI15-LCFI14
	.long L$set$24
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.set L$set$25,LCFI16-LCFI15
	.long L$set$25
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$26,LEFDE9-LASFDE9
	.long L$set$26
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB5-.
	.set L$set$27,LFE5-LFB5
	.quad L$set$27
	.uleb128 0x8
	.quad	LLSDA5-.
	.byte	0x4
	.set L$set$28,LCFI17-LFB5
	.long L$set$28
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$29,LCFI18-LCFI17
	.long L$set$29
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$30,LCFI19-LCFI18
	.long L$set$30
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.set L$set$31,LCFI20-LCFI19
	.long L$set$31
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$32,LEFDE11-LASFDE11
	.long L$set$32
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB7-.
	.set L$set$33,LFE7-LFB7
	.quad L$set$33
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$34,LCFI21-LFB7
	.long L$set$34
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$35,LCFI22-LCFI21
	.long L$set$35
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$36,LCFI23-LCFI22
	.long L$set$36
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$37,LEFDE13-LASFDE13
	.long L$set$37
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB8-.
	.set L$set$38,LFE8-LFB8
	.quad L$set$38
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$39,LCFI24-LFB8
	.long L$set$39
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$40,LCFI25-LCFI24
	.long L$set$40
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$41,LCFI26-LCFI25
	.long L$set$41
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$42,LEFDE15-LASFDE15
	.long L$set$42
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB11-.
	.set L$set$43,LFE11-LFB11
	.quad L$set$43
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$44,LCFI27-LFB11
	.long L$set$44
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$45,LCFI28-LCFI27
	.long L$set$45
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$46,LCFI29-LCFI28
	.long L$set$46
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
	.set L$set$47,LCFI30-LCFI29
	.long L$set$47
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$48,LEFDE17-LASFDE17
	.long L$set$48
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB14-.
	.set L$set$49,LFE14-LFB14
	.quad L$set$49
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$50,LCFI31-LFB14
	.long L$set$50
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$51,LCFI32-LCFI31
	.long L$set$51
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$52,LCFI33-LCFI32
	.long L$set$52
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.set L$set$53,LCFI34-LCFI33
	.long L$set$53
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$54,LEFDE19-LASFDE19
	.long L$set$54
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB15-.
	.set L$set$55,LFE15-LFB15
	.quad L$set$55
	.uleb128 0x8
	.quad	LLSDA15-.
	.byte	0x4
	.set L$set$56,LCFI35-LFB15
	.long L$set$56
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$57,LCFI36-LCFI35
	.long L$set$57
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$58,LCFI37-LCFI36
	.long L$set$58
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.set L$set$59,LCFI38-LCFI37
	.long L$set$59
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$60,LEFDE21-LASFDE21
	.long L$set$60
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB17-.
	.set L$set$61,LFE17-LFB17
	.quad L$set$61
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$62,LCFI39-LFB17
	.long L$set$62
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$63,LCFI40-LCFI39
	.long L$set$63
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$64,LCFI41-LCFI40
	.long L$set$64
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$65,LEFDE23-LASFDE23
	.long L$set$65
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB25-.
	.set L$set$66,LFE25-LFB25
	.quad L$set$66
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$67,LCFI42-LFB25
	.long L$set$67
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$68,LCFI43-LCFI42
	.long L$set$68
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$69,LCFI44-LCFI43
	.long L$set$69
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.set L$set$70,LCFI45-LCFI44
	.long L$set$70
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$71,LEFDE25-LASFDE25
	.long L$set$71
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB27-.
	.set L$set$72,LFE27-LFB27
	.quad L$set$72
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$73,LCFI46-LFB27
	.long L$set$73
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$74,LCFI47-LCFI46
	.long L$set$74
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$75,LCFI48-LCFI47
	.long L$set$75
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.set L$set$76,LCFI49-LCFI48
	.long L$set$76
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE25:
	.ident	"GCC: (GNU) 14.1.0"
	.subsections_via_symbols
