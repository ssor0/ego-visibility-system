	.build_version macos,  13, 0
	.text
	.align 1,0x90
	.globl _udp_streams__udp_stream_typeDI
_udp_streams__udp_stream_typeDI:
LFB2:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	movq	%rdi, -8(%rbp)
	popq	%rbp
LCFI2:
	ret
LFE2:
	.const
lC1:
	.ascii "udp_streams.ads"
	.space 1
	.text
	.align 1,0x90
	.globl _udp_streams__udp_stream_typeDF__2
_udp_streams__udp_stream_typeDF__2:
LFB3:
	pushq	%rbp
LCFI3:
	movq	%rsp, %rbp
LCFI4:
	pushq	%r12
	pushq	%rbx
LEHB0:
	subq	$48, %rsp
LCFI5:
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movb	%al, -60(%rbp)
	call	_ada__exceptions__triggered_by_abort
LEHE0:
	movl	%eax, %r12d
	movl	$0, %ebx
	movq	-56(%rbp), %rax
	addq	$56, %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB1:
	call	_gnat__sockets__sock_addr_typeDF
LEHE1:
L7:
	movq	-56(%rbp), %rax
	addq	$24, %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB2:
	call	_gnat__sockets__sock_addr_typeDF
LEHE2:
L10:
	testb	%bl, %bl
	je	L2
	movl	%r12d, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L2
	movl	$64, %esi
	leaq	lC1(%rip), %rax
	movq	%rax, %rdi
LEHB3:
	call	___gnat_rcheck_PE_Finalize_Raised_Exception
L11:
	cmpq	$1, %rdx
	je	L6
	movq	%rax, %rdi
	call	__Unwind_Resume
L6:
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
	jmp	L7
L12:
	cmpq	$2, %rdx
	je	L9
	movq	%rax, %rdi
	call	__Unwind_Resume
L9:
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
	jmp	L10
L2:
	addq	$48, %rsp
LEHE3:
	popq	%rbx
	popq	%r12
	popq	%rbp
LCFI6:
	ret
LFE3:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
	.align 2
LLSDA3:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT3-LLSDATTD3
LLSDATTD3:
	.byte	0x1
	.uleb128 LLSDACSE3-LLSDACSB3
LLSDACSB3:
	.uleb128 LEHB0-LFB3
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB1-LFB3
	.uleb128 LEHE1-LEHB1
	.uleb128 L11-LFB3
	.uleb128 0x1
	.uleb128 LEHB2-LFB3
	.uleb128 LEHE2-LEHB2
	.uleb128 L12-LFB3
	.uleb128 0x3
	.uleb128 LEHB3-LFB3
	.uleb128 LEHE3-LEHB3
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
	.globl _udp_streams__udp_stream_typeFD
_udp_streams__udp_stream_typeFD:
LFB4:
	pushq	%rbp
LCFI7:
	movq	%rsp, %rbp
LCFI8:
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_udp_streams__udp_stream_typeDF__2
	leave
LCFI9:
	ret
LFE4:
	.align 1,0x90
_udp_streams__udp_stream_typeIP___finalizer.0:
LFB6:
	pushq	%rbp
LCFI10:
	movq	%rsp, %rbp
LCFI11:
	pushq	%r13
	pushq	%r12
	pushq	%rbx
LEHB4:
	subq	$72, %rsp
LCFI12:
	movq	%rdi, -72(%rbp)
	movl	%esi, %eax
	movb	%al, -76(%rbp)
	movq	%r10, %r13
	movq	%r10, -88(%rbp)
	call	_ada__exceptions__triggered_by_abort
LEHE4:
	movl	%eax, %r12d
	movl	$0, %ebx
	movl	0(%r13), %eax
	cmpl	$1, %eax
	je	L19
	cmpl	$2, %eax
	jne	L20
L18:
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB5:
	call	_gnat__sockets__sock_addr_typeDF
LEHE5:
L19:
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB6:
	call	_gnat__sockets__sock_addr_typeDF
LEHE6:
L20:
	testb	%bl, %bl
	je	L15
	movl	%r12d, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L15
	movl	$64, %esi
	leaq	lC1(%rip), %rax
	movq	%rax, %rdi
LEHB7:
	call	___gnat_rcheck_PE_Finalize_Raised_Exception
L27:
	cmpq	$1, %rdx
	je	L24
	movq	%rax, %rdi
	call	__Unwind_Resume
L24:
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
	jmp	L19
L28:
	cmpq	$2, %rdx
	je	L26
	movq	%rax, %rdi
	call	__Unwind_Resume
L26:
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
	jmp	L20
L15:
	addq	$72, %rsp
LEHE7:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
LCFI13:
	ret
LFE6:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
	.align 2
LLSDA6:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT6-LLSDATTD6
LLSDATTD6:
	.byte	0x1
	.uleb128 LLSDACSE6-LLSDACSB6
LLSDACSB6:
	.uleb128 LEHB4-LFB6
	.uleb128 LEHE4-LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB5-LFB6
	.uleb128 LEHE5-LEHB5
	.uleb128 L27-LFB6
	.uleb128 0x1
	.uleb128 LEHB6-LFB6
	.uleb128 LEHE6-LEHB6
	.uleb128 L28-LFB6
	.uleb128 0x3
	.uleb128 LEHB7-LFB6
	.uleb128 LEHE7-LEHB7
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
	.globl _udp_streams__udp_stream_typeIP
_udp_streams__udp_stream_typeIP:
LFB5:
	pushq	%rbp
LCFI14:
	movq	%rsp, %rbp
LCFI15:
	pushq	%rbx
LEHB8:
	subq	$88, %rsp
LEHE8:
LCFI16:
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	%ecx, -88(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -84(%rbp)
	jne	L30
	movq	_udp_streams__udp_stream_typeT@GOTPCREL(%rip), %rax
	leaq	32(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
L30:
	cmpl	$3, -84(%rbp)
	je	L31
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB9:
	call	_ada__streams__root_stream_typeIP
L31:
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpl	$3, -84(%rbp)
	je	L29
	movq	_gnat__sockets__no_sock_addr@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ11_udp_streams
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
	jne	L33
	movl	$69, %esi
	leaq	lC1(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
L33:
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	_gnat__sockets__no_sock_addr@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ11_udp_streams
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
	jne	L34
	movl	$70, %esi
	leaq	lC1(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
LEHE9:
L34:
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-72(%rbp), %rax
	movb	$0, 104(%rax)
	jmp	L29
L39:
	cmpq	$1, %rdx
	je	L37
	movq	%rax, %rdi
LEHB10:
	call	__Unwind_Resume
LEHE10:
L37:
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
LEHB11:
	call	_udp_streams__udp_stream_typeIP___finalizer.0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_reraise_zcx
LEHE11:
L40:
	movq	%rax, %rbx
	movq	%rbx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
LEHB12:
	call	___gnat_end_handler_v1
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	__Unwind_Resume
L29:
	movq	-8(%rbp), %rbx
	leave
LCFI17:
LEHE12:
	ret
LFE5:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
	.align 2
LLSDA5:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT5-LLSDATTD5
LLSDATTD5:
	.byte	0x1
	.uleb128 LLSDACSE5-LLSDACSB5
LLSDACSB5:
	.uleb128 LEHB8-LFB5
	.uleb128 LEHE8-LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB9-LFB5
	.uleb128 LEHE9-LEHB9
	.uleb128 L39-LFB5
	.uleb128 0x1
	.uleb128 LEHB10-LFB5
	.uleb128 LEHE10-LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB11-LFB5
	.uleb128 LEHE11-LEHB11
	.uleb128 L40-LFB5
	.uleb128 0
	.uleb128 LEHB12-LFB5
	.uleb128 LEHE12-LEHB12
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
	.globl _udp_streams___size__2
_udp_streams___size__2:
LFB7:
	pushq	%rbp
LCFI18:
	movq	%rsp, %rbp
LCFI19:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	addq	$105, %rax
	salq	$3, %rax
	addq	$63, %rax
	andq	$-64, %rax
	popq	%rbp
LCFI20:
	ret
LFE7:
	.cstring
lC2:
	.ascii "UDP_STREAMS.UDP_STREAM_TYPE\0"
	.const
	.align 3
lC0:
	.long	1
	.long	28
	.text
	.align 1,0x90
	.globl _udp_streams__udp_stream_typePI__2
_udp_streams__udp_stream_typePI__2:
LFB8:
	pushq	%rbp
LCFI21:
	movq	%rsp, %rbp
LCFI22:
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	lC2(%rip), %rax
	leaq	lC0(%rip), %rdx
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_system__put_images__put_image_unknown
	leave
LCFI23:
	ret
LFE8:
	.align 1,0x90
_udp_streams__Tudp_stream_typeCFD__B28s___finalizer.1:
LFB10:
	pushq	%rbp
LCFI24:
	movq	%rsp, %rbp
LCFI25:
	subq	$16, %rsp
	movq	%r10, -8(%rbp)
	movq	_system__soft_links__abort_defer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	*%rax
	movq	_system__soft_links__complete_master@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	*%rax
	movq	_system__soft_links__abort_undefer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	*%rax
	leave
LCFI26:
	ret
LFE10:
	.align 1,0x90
	.globl _udp_streams__Tudp_stream_typeCFD
_udp_streams__Tudp_stream_typeCFD:
LFB9:
	pushq	%rbp
LCFI27:
	movq	%rsp, %rbp
LCFI28:
	pushq	%r12
	pushq	%rbx
LEHB13:
	subq	$32, %rsp
LEHE13:
LCFI29:
	movq	%rdi, -40(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	_system__soft_links__enter_master@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
LEHB14:
	call	*%rax
	movq	_system__soft_links__current_master@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	*%rax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	*%rdx
LEHE14:
	movl	$1, %r12d
L51:
	leaq	-24(%rbp), %rax
	movq	%rax, %r10
LEHB15:
	call	_udp_streams__Tudp_stream_typeCFD__B28s___finalizer.1
	cmpl	$1, %r12d
	jne	L48
	jmp	L53
L52:
	movq	%rax, %rbx
	movl	$0, %r12d
	jmp	L51
L48:
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	__Unwind_Resume
L53:
	addq	$32, %rsp
LEHE15:
	popq	%rbx
	popq	%r12
	popq	%rbp
LCFI30:
	ret
LFE9:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
LLSDA9:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE9-LLSDACSB9
LLSDACSB9:
	.uleb128 LEHB13-LFB9
	.uleb128 LEHE13-LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB14-LFB9
	.uleb128 LEHE14-LEHB14
	.uleb128 L52-LFB9
	.uleb128 0
	.uleb128 LEHB15-LFB9
	.uleb128 LEHE15-LEHB15
	.uleb128 0
	.uleb128 0
LLSDACSE9:
	.text
	.align 1,0x90
	.globl _udp_streams__finalize_spec
_udp_streams__finalize_spec:
LFB11:
	pushq	%rbp
LCFI31:
	movq	%rsp, %rbp
LCFI32:
	movq	_udp_streams__udp_stream_typeT@GOTPCREL(%rip), %rax
	leaq	32(%rax), %rax
	movq	%rax, %rdi
	call	_ada__tags__unregister_tag
	popq	%rbp
LCFI33:
	ret
LFE11:
	.align 1,0x90
	.globl _udp_streams__set_socket
_udp_streams__set_socket:
LFB12:
	pushq	%rbp
LCFI34:
	movq	%rsp, %rbp
LCFI35:
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	$1, 88(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 104(%rax)
	nop
	popq	%rbp
LCFI36:
	ret
LFE12:
	.align 1,0x90
	.globl _udp_streams__is_closed
_udp_streams__is_closed:
LFB13:
	pushq	%rbp
LCFI37:
	movq	%rsp, %rbp
LCFI38:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	sete	%al
	popq	%rbp
LCFI39:
	ret
LFE13:
	.align 1,0x90
	.globl _udp_streams__data_available
_udp_streams__data_available:
LFB14:
	pushq	%rbp
LCFI40:
	movq	%rsp, %rbp
LCFI41:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	104(%rax), %eax
	xorl	$1, %eax
	popq	%rbp
LCFI42:
	ret
LFE14:
	.const
lC3:
	.ascii "udp_streams.adb"
	.space 1
	.text
	.align 1,0x90
	.globl _udp_streams__read__2
_udp_streams__read__2:
LFB15:
	pushq	%rbp
LCFI43:
	movq	%rsp, %rbp
LCFI44:
	pushq	%rbx
LEHB16:
	subq	$88, %rsp
LCFI45:
	movq	%rdi, -72(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rsi, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movzbl	_udp_streams__readE15b(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L63
	movl	$44, %esi
	leaq	lC3(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_PE_Access_Before_Elaboration
LEHE16:
L63:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	L70
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	addq	$56, %rdx
	movq	-72(%rbp), %rsi
	addq	$105, %rsi
	movq	%rsi, %rcx
	movq	$1, -48(%rbp)
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movl	%eax, %edi
LEHB17:
	call	_gnat__sockets__receive_socket__2
LEHE17:
	movq	-72(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-72(%rbp), %rax
	movb	$0, 104(%rax)
	movq	-72(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	L70
	movq	-72(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	L71
L70:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jl	L72
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	cqto
	movq	-88(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rbx
	sarq	$63, %rbx
	subq	%rcx, %rax
	sbbq	%rbx, %rdx
	addq	$1, %rax
	adcq	$0, %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	jmp	L73
L72:
	movl	$0, %ecx
	movl	$0, %ebx
L73:
	movabsq	$9223372036854775807, %rax
	movl	$0, %edx
	cmpq	%rcx, %rax
	movq	%rdx, %rax
	sbbq	%rbx, %rax
	jge	L74
	movl	$104, %esi
	leaq	lC3(%rip), %rax
	movq	%rax, %rdi
LEHB18:
	call	___gnat_rcheck_CE_Range_Check
L74:
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	88(%rdx), %rdi
	movq	%rcx, %rdx
	subq	$1, %rdx
	movl	$0, %ecx
	addq	%rdi, %rdx
	jno	L75
	movl	$1, %ecx
L75:
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	testq	%rdx, %rdx
	je	L77
	movl	$104, %esi
	leaq	lC3(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
L77:
	movq	%rdi, %rdx
	cmpq	%rax, %rdx
	jl	L78
	testq	%rax, %rax
	jle	L79
	cmpq	%rsi, %rdx
	jle	L78
L79:
	movl	$104, %esi
	leaq	lC3(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Range_Check
L78:
	cmpq	%rax, %rdx
	cmpq	%rax, %rdx
	cmpq	%rax, %rdx
	jl	L84
	movq	%rdx, %rcx
	movq	%rax, %rsi
	subq	%rsi, %rcx
	leaq	1(%rcx), %r10
	jmp	L85
L84:
	movl	$0, %r10d
L85:
	movq	-88(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-88(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, %rsi
	jl	L86
	movq	-88(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rbx
	sarq	$63, %rbx
	movq	-88(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	sarq	$63, %rdi
	subq	%rsi, %rcx
	sbbq	%rdi, %rbx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	addq	$1, %rsi
	adcq	$0, %rdi
	jmp	L87
L86:
	movl	$0, %esi
	movl	$0, %edi
L87:
	cmpq	%rax, %rdx
	jl	L88
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
	jmp	L89
L88:
	movl	$0, %ecx
	movl	$0, %ebx
L89:
	movq	%rsi, %rdx
	xorq	%rcx, %rdx
	xorq	%rbx, %rdi
	movq	%rdi, %rcx
	orq	%rcx, %rdx
	je	L90
	movl	$104, %esi
	leaq	lC3(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Length_Check
L90:
	movq	-96(%rbp), %rdx
	leaq	95(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	addq	$9, %rax
	movq	%rdx, %rcx
	movq	%r10, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_memcpy
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	addq	%rdx, %rax
	jno	L91
	movl	$1, %ecx
L91:
	movq	%rax, %rdx
	movq	%rcx, %rax
	testq	%rax, %rax
	je	L93
	movl	$107, %esi
	leaq	lC3(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
L93:
	movq	-72(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, %rdx
	jg	L94
	movq	-72(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	addq	%rdx, %rax
	jno	L95
	movl	$1, %ecx
L95:
	movq	%rax, %rdx
	movq	%rcx, %rax
	testq	%rax, %rax
	je	L97
	movl	$108, %esi
	leaq	lC3(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_CE_Overflow_Check
L97:
	movq	-72(%rbp), %rax
	movq	%rdx, 88(%rax)
	jmp	L104
L94:
	movq	-72(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-72(%rbp), %rax
	movq	$1, 88(%rax)
L104:
	nop
L71:
	movq	-56(%rbp), %rax
	jmp	L103
L102:
	cmpq	$1, %rdx
	je	L101
	movq	%rax, %rdi
	call	__Unwind_Resume
L101:
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_begin_handler_v1
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movb	$1, 104(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	nop
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	___gnat_end_handler_v1
	jmp	L71
L103:
	movq	-8(%rbp), %rbx
	leave
LCFI46:
LEHE18:
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
	.uleb128 LEHB16-LFB15
	.uleb128 LEHE16-LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB17-LFB15
	.uleb128 LEHE17-LEHB17
	.uleb128 L102-LFB15
	.uleb128 0x1
	.uleb128 LEHB18-LFB15
	.uleb128 LEHE18-LEHB18
	.uleb128 0
	.uleb128 0
LLSDACSE15:
	.byte	0x1
	.byte	0
	.align 2
	.long	_gnat__sockets__socket_error+4@GOTPCREL
LLSDATT15:
	.text
	.const
lC4:
	.ascii "s-stoele.ads"
	.space 1
	.text
	.align 1,0x90
	.globl _udp_streams__last_address
_udp_streams__last_address:
LFB16:
	pushq	%rbp
LCFI47:
	movq	%rsp, %rbp
LCFI48:
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
LCFI49:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ11_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ11_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ11_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ11_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ11_udp_streams
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ11_udp_streams
	addq	$15, %rax
	andq	$-8, %rax
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movzbl	56(%rax), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ11_udp_streams
	addq	$15, %rax
	andq	$-8, %rax
	cmpq	$32, %rax
	jbe	L106
	movl	$53, %esi
	leaq	lC4(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_PE_Explicit_Raise
L106:
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	addq	$56, %rax
	movq	%rbx, %rcx
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_memcpy
	movl	$1, %edx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_gnat__sockets__sock_addr_typeDA
	cmpq	-24(%rbp), %rbx
	je	L105
	movzbl	(%rbx), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ11_udp_streams
	addq	$15, %rax
	andq	$-8, %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_memcpy
L105:
	movq	-24(%rbp), %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
LCFI50:
	ret
LFE16:
	.align 1,0x90
	.globl _udp_streams__set_send_address
_udp_streams__set_send_address:
LFB17:
	pushq	%rbp
LCFI51:
	movq	%rsp, %rbp
LCFI52:
	pushq	%r13
	pushq	%r12
	pushq	%rbx
LEHB19:
	subq	$680, %rsp
LEHE19:
LCFI53:
	movq	%rdi, -696(%rbp)
	movq	%rsi, -704(%rbp)
	movq	-704(%rbp), %rax
	movzbl	(%rax), %ebx
	movq	-704(%rbp), %rax
	movzbl	(%rax), %r13d
	movl	%r13d, %edi
	call	__GLOBAL__SZ9_udp_streams
	movl	%r13d, %edi
	call	__GLOBAL__SZ9_udp_streams
	movl	%ebx, %edi
	call	__GLOBAL__SZ9_udp_streams
	movl	%ebx, %edi
	call	__GLOBAL__SZ9_udp_streams
	movl	%ebx, %edi
	call	__GLOBAL__SZ9_udp_streams
	movl	%ebx, %edi
	call	__GLOBAL__SZ11_udp_streams
	movl	%ebx, %edi
	call	__GLOBAL__SZ11_udp_streams
	addq	$15, %rax
	andq	$-8, %rax
	movq	%rax, %rbx
	movq	_system__soft_links__abort_defer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
LEHB20:
	call	*%rax
LEHE20:
	movq	-696(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	-704(%rbp), %rax
	cmpq	%rax, %rdx
	je	L121
	movq	-696(%rbp), %rax
	addq	$24, %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
LEHB21:
	call	_gnat__sockets__sock_addr_typeDF
	movq	-696(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-704(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_memcpy
	movq	-696(%rbp), %rax
	addq	$24, %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_gnat__sockets__sock_addr_typeDA
LEHE21:
L121:
	movl	$1, %ebx
L117:
LEHB22:
	call	_system__standard_library__abort_undefer_direct
LEHE22:
	cmpl	$1, %ebx
	jne	L111
	nop
	jmp	L122
L119:
	cmpq	$1, %rdx
	je	L114
	movq	%rax, %r12
	jmp	L115
L114:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_begin_handler_v1
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
LEHB23:
	call	___gnat_set_exception_parameter
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	___gnat_raise_from_controlled_operation
LEHE23:
L120:
	movq	%rax, %rbx
	movq	%rbx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
LEHB24:
	call	___gnat_end_handler_v1
LEHE24:
	movq	%rbx, %r12
	jmp	L115
L118:
	movq	%rax, %r12
L115:
	movl	$0, %ebx
	jmp	L117
L111:
	movq	%r12, %rax
	movq	%rax, %rdi
LEHB25:
	call	__Unwind_Resume
L122:
	addq	$680, %rsp
LEHE25:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
LCFI54:
	ret
LFE17:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
	.align 2
LLSDA17:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT17-LLSDATTD17
LLSDATTD17:
	.byte	0x1
	.uleb128 LLSDACSE17-LLSDACSB17
LLSDACSB17:
	.uleb128 LEHB19-LFB17
	.uleb128 LEHE19-LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB20-LFB17
	.uleb128 LEHE20-LEHB20
	.uleb128 L118-LFB17
	.uleb128 0
	.uleb128 LEHB21-LFB17
	.uleb128 LEHE21-LEHB21
	.uleb128 L119-LFB17
	.uleb128 0x3
	.uleb128 LEHB22-LFB17
	.uleb128 LEHE22-LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB23-LFB17
	.uleb128 LEHE23-LEHB23
	.uleb128 L120-LFB17
	.uleb128 0
	.uleb128 LEHB24-LFB17
	.uleb128 LEHE24-LEHB24
	.uleb128 L118-LFB17
	.uleb128 0
	.uleb128 LEHB25-LFB17
	.uleb128 LEHE25-LEHB25
	.uleb128 0
	.uleb128 0
LLSDACSE17:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 2
	.long	___gnat_others_value+4@GOTPCREL
LLSDATT17:
	.text
	.align 1,0x90
	.globl _udp_streams__write__2
_udp_streams__write__2:
LFB18:
	pushq	%rbp
LCFI55:
	movq	%rsp, %rbp
LCFI56:
	pushq	%rbx
	subq	$56, %rsp
LCFI57:
	movq	%rdi, -40(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rcx
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	8(%rdx), %rbx
	movzbl	_udp_streams__writeE29b(%rip), %edx
	xorl	$1, %edx
	testb	%dl, %dl
	je	L124
	movl	$150, %esi
	leaq	lC3(%rip), %rax
	movq	%rax, %rdi
	call	___gnat_rcheck_PE_Access_Before_Elaboration
L124:
	cmpq	%rax, %rbx
	cmpq	%rax, %rbx
	cmpq	%rax, %rbx
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	$0, %r8d
	movl	%eax, %edi
	call	_gnat__sockets__send_socket__3
	movq	%rax, -24(%rbp)
	cmpq	-24(%rbp), %rbx
	je	L133
	movq	-40(%rbp), %rax
	movq	$0, 88(%rax)
	nop
L133:
	nop
	movq	-8(%rbp), %rbx
	leave
LCFI58:
	ret
LFE18:
	.align 1,0x90
	.globl _udp_streams___elabb
_udp_streams___elabb:
LFB0:
	pushq	%rbp
LCFI59:
	movq	%rsp, %rbp
LCFI60:
	movb	$1, _udp_streams__readE15b(%rip)
	movb	$1, _udp_streams__writeE29b(%rip)
	nop
	popq	%rbp
LCFI61:
	ret
LFE0:
	.align 1,0x90
	.globl _udp_streams___elabs
_udp_streams___elabs:
LFB1:
	pushq	%rbp
LCFI62:
	movq	%rsp, %rbp
LCFI63:
	leaq	_udp_streams__udp_stream_typeB37s(%rip), %rax
	movq	%rax, %rdi
	call	_ada__tags__check_tsd
	movq	_udp_streams__udp_stream_typeT@GOTPCREL(%rip), %rax
	leaq	32(%rax), %rax
	movq	%rax, %rdi
	call	_ada__tags__register_tag
	nop
	popq	%rbp
LCFI64:
	ret
LFE1:
	.globl _udp_streams_E
	.data
	.align 1
_udp_streams_E:
	.space 2
	.globl _udp_streams__readE15b
_udp_streams__readE15b:
	.space 1
	.globl _udp_streams__writeE29b
_udp_streams__writeE29b:
	.space 1
	.globl _udp_streams__udp_stream_typeY
	.const_data
	.align 3
_udp_streams__udp_stream_typeY:
	.quad	_udp_streams__udp_stream_typeT+8
	.globl _udp_streams__udp_stream_typeP
	.align 3
_udp_streams__udp_stream_typeP:
	.quad	_udp_streams__udp_stream_typeT+32
	.globl _udp_streams__udp_stream_typeE33s
	.const
	.align 4
_udp_streams__udp_stream_typeE33s:
	.ascii "UDP_STREAMS.UDP_STREAM_TYPE\0"
	.globl _udp_streams__udp_stream_typeH34s
	.data
	.align 3
_udp_streams__udp_stream_typeH34s:
	.space 8
	.globl _udp_streams__udp_stream_typeB37s
	.const_data
	.align 5
_udp_streams__udp_stream_typeB37s:
	.long	1
	.long	0
	.long	8
	.space 4
	.quad	_udp_streams__udp_stream_typeE33s
	.quad	_udp_streams__udp_stream_typeE33s
	.quad	_udp_streams__udp_stream_typeH34s
	.byte	0
	.byte	0
	.byte	1
	.space 5
	.quad	_udp_streams___size__2
	.quad	0
	.quad	0
	.quad	_udp_streams__udp_stream_typeT+32
	.quad	_ada__streams__root_stream_typeT+32
	.globl _udp_streams__udp_stream_typeR35s___UNC
	.align 5
_udp_streams__udp_stream_typeR35s___UNC:
	.long	1
	.long	10
	.quad	_udp_streams___size__2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	_udp_streams__udp_stream_typeDF__2
	.quad	_udp_streams__udp_stream_typePI__2
	.globl _udp_streams__udp_stream_typeR35s
	.align 3
_udp_streams__udp_stream_typeR35s:
	.quad	_udp_streams__udp_stream_typeR35s___UNC+8
	.globl _udp_streams__udp_stream_typeT
	.align 5
_udp_streams__udp_stream_typeT:
	.long	7
	.byte	1
	.byte	2
	.space 2
	.quad	_udp_streams__udp_stream_typeR35s___UNC+8
	.quad	0
	.quad	_udp_streams__udp_stream_typeB37s
	.quad	_udp_streams__read__2
	.quad	_udp_streams__write__2
	.quad	_udp_streams__set_socket
	.quad	_udp_streams__is_closed
	.quad	_udp_streams__data_available
	.quad	_udp_streams__last_address
	.quad	_udp_streams__set_send_address
	.text
	.align 1,0x90
__GLOBAL__SZ9_udp_streams:
LFB28:
	pushq	%rbp
LCFI65:
	movq	%rsp, %rbp
LCFI66:
	pushq	%rbx
LCFI67:
	movb	%dil, -17(%rbp)
	cmpb	$0, -17(%rbp)
	jne	L137
	movl	$4, %eax
	jmp	L139
L137:
	movl	$16, %eax
L139:
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
LCFI68:
	ret
LFE28:
	.align 1,0x90
__GLOBAL__SZ11_udp_streams:
LFB30:
	pushq	%rbp
LCFI69:
	movq	%rsp, %rbp
LCFI70:
	pushq	%rbx
	subq	$24, %rsp
LCFI71:
	movb	%dil, -17(%rbp)
	cmpb	$2, -17(%rbp)
	je	L141
	cmpb	$1, -17(%rbp)
	ja	L142
	movzbl	-17(%rbp), %eax
	movl	%eax, %edi
	call	__GLOBAL__SZ9_udp_streams
	addq	$4, %rax
	andq	$-4, %rax
	addq	$11, %rax
	andq	$-8, %rax
	jmp	L145
L142:
	movl	$0, %eax
	jmp	L145
L141:
	movl	$16, %eax
L145:
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
LCFI72:
	ret
LFE30:
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
	.quad	LFB3-.
	.set L$set$7,LFE3-LFB3
	.quad L$set$7
	.uleb128 0x8
	.quad	LLSDA3-.
	.byte	0x4
	.set L$set$8,LCFI3-LFB3
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
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.set L$set$11,LCFI6-LCFI5
	.long L$set$11
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$12,LEFDE5-LASFDE5
	.long L$set$12
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB4-.
	.set L$set$13,LFE4-LFB4
	.quad L$set$13
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$14,LCFI7-LFB4
	.long L$set$14
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$15,LCFI8-LCFI7
	.long L$set$15
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$16,LCFI9-LCFI8
	.long L$set$16
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$17,LEFDE7-LASFDE7
	.long L$set$17
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB6-.
	.set L$set$18,LFE6-LFB6
	.quad L$set$18
	.uleb128 0x8
	.quad	LLSDA6-.
	.byte	0x4
	.set L$set$19,LCFI10-LFB6
	.long L$set$19
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$20,LCFI11-LCFI10
	.long L$set$20
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$21,LCFI12-LCFI11
	.long L$set$21
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.set L$set$22,LCFI13-LCFI12
	.long L$set$22
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$23,LEFDE9-LASFDE9
	.long L$set$23
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB5-.
	.set L$set$24,LFE5-LFB5
	.quad L$set$24
	.uleb128 0x8
	.quad	LLSDA5-.
	.byte	0x4
	.set L$set$25,LCFI14-LFB5
	.long L$set$25
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$26,LCFI15-LCFI14
	.long L$set$26
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$27,LCFI16-LCFI15
	.long L$set$27
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.set L$set$28,LCFI17-LCFI16
	.long L$set$28
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$29,LEFDE11-LASFDE11
	.long L$set$29
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB7-.
	.set L$set$30,LFE7-LFB7
	.quad L$set$30
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$31,LCFI18-LFB7
	.long L$set$31
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$32,LCFI19-LCFI18
	.long L$set$32
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$33,LCFI20-LCFI19
	.long L$set$33
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$34,LEFDE13-LASFDE13
	.long L$set$34
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB8-.
	.set L$set$35,LFE8-LFB8
	.quad L$set$35
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$36,LCFI21-LFB8
	.long L$set$36
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$37,LCFI22-LCFI21
	.long L$set$37
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$38,LCFI23-LCFI22
	.long L$set$38
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$39,LEFDE15-LASFDE15
	.long L$set$39
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB10-.
	.set L$set$40,LFE10-LFB10
	.quad L$set$40
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$41,LCFI24-LFB10
	.long L$set$41
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$42,LCFI25-LCFI24
	.long L$set$42
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$43,LCFI26-LCFI25
	.long L$set$43
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$44,LEFDE17-LASFDE17
	.long L$set$44
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB9-.
	.set L$set$45,LFE9-LFB9
	.quad L$set$45
	.uleb128 0x8
	.quad	LLSDA9-.
	.byte	0x4
	.set L$set$46,LCFI27-LFB9
	.long L$set$46
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$47,LCFI28-LCFI27
	.long L$set$47
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$48,LCFI29-LCFI28
	.long L$set$48
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.set L$set$49,LCFI30-LCFI29
	.long L$set$49
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$50,LEFDE19-LASFDE19
	.long L$set$50
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB11-.
	.set L$set$51,LFE11-LFB11
	.quad L$set$51
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$52,LCFI31-LFB11
	.long L$set$52
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$53,LCFI32-LCFI31
	.long L$set$53
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$54,LCFI33-LCFI32
	.long L$set$54
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$55,LEFDE21-LASFDE21
	.long L$set$55
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB12-.
	.set L$set$56,LFE12-LFB12
	.quad L$set$56
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$57,LCFI34-LFB12
	.long L$set$57
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$58,LCFI35-LCFI34
	.long L$set$58
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$59,LCFI36-LCFI35
	.long L$set$59
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$60,LEFDE23-LASFDE23
	.long L$set$60
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB13-.
	.set L$set$61,LFE13-LFB13
	.quad L$set$61
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$62,LCFI37-LFB13
	.long L$set$62
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$63,LCFI38-LCFI37
	.long L$set$63
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$64,LCFI39-LCFI38
	.long L$set$64
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$65,LEFDE25-LASFDE25
	.long L$set$65
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB14-.
	.set L$set$66,LFE14-LFB14
	.quad L$set$66
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$67,LCFI40-LFB14
	.long L$set$67
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$68,LCFI41-LCFI40
	.long L$set$68
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$69,LCFI42-LCFI41
	.long L$set$69
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$70,LEFDE27-LASFDE27
	.long L$set$70
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB15-.
	.set L$set$71,LFE15-LFB15
	.quad L$set$71
	.uleb128 0x8
	.quad	LLSDA15-.
	.byte	0x4
	.set L$set$72,LCFI43-LFB15
	.long L$set$72
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$73,LCFI44-LCFI43
	.long L$set$73
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$74,LCFI45-LCFI44
	.long L$set$74
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.set L$set$75,LCFI46-LCFI45
	.long L$set$75
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$76,LEFDE29-LASFDE29
	.long L$set$76
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB16-.
	.set L$set$77,LFE16-LFB16
	.quad L$set$77
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$78,LCFI47-LFB16
	.long L$set$78
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$79,LCFI48-LCFI47
	.long L$set$79
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$80,LCFI49-LCFI48
	.long L$set$80
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.set L$set$81,LCFI50-LCFI49
	.long L$set$81
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$82,LEFDE31-LASFDE31
	.long L$set$82
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB17-.
	.set L$set$83,LFE17-LFB17
	.quad L$set$83
	.uleb128 0x8
	.quad	LLSDA17-.
	.byte	0x4
	.set L$set$84,LCFI51-LFB17
	.long L$set$84
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$85,LCFI52-LCFI51
	.long L$set$85
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$86,LCFI53-LCFI52
	.long L$set$86
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.set L$set$87,LCFI54-LCFI53
	.long L$set$87
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$88,LEFDE33-LASFDE33
	.long L$set$88
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB18-.
	.set L$set$89,LFE18-LFB18
	.quad L$set$89
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$90,LCFI55-LFB18
	.long L$set$90
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$91,LCFI56-LCFI55
	.long L$set$91
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$92,LCFI57-LCFI56
	.long L$set$92
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.set L$set$93,LCFI58-LCFI57
	.long L$set$93
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$94,LEFDE35-LASFDE35
	.long L$set$94
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB0-.
	.set L$set$95,LFE0-LFB0
	.quad L$set$95
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$96,LCFI59-LFB0
	.long L$set$96
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$97,LCFI60-LCFI59
	.long L$set$97
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$98,LCFI61-LCFI60
	.long L$set$98
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE35:
LSFDE37:
	.set L$set$99,LEFDE37-LASFDE37
	.long L$set$99
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB1-.
	.set L$set$100,LFE1-LFB1
	.quad L$set$100
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$101,LCFI62-LFB1
	.long L$set$101
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$102,LCFI63-LCFI62
	.long L$set$102
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$103,LCFI64-LCFI63
	.long L$set$103
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE37:
LSFDE39:
	.set L$set$104,LEFDE39-LASFDE39
	.long L$set$104
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB28-.
	.set L$set$105,LFE28-LFB28
	.quad L$set$105
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$106,LCFI65-LFB28
	.long L$set$106
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$107,LCFI66-LCFI65
	.long L$set$107
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$108,LCFI67-LCFI66
	.long L$set$108
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.set L$set$109,LCFI68-LCFI67
	.long L$set$109
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE39:
LSFDE41:
	.set L$set$110,LEFDE41-LASFDE41
	.long L$set$110
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB30-.
	.set L$set$111,LFE30-LFB30
	.quad L$set$111
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$112,LCFI69-LFB30
	.long L$set$112
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.set L$set$113,LCFI70-LCFI69
	.long L$set$113
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.set L$set$114,LCFI71-LCFI70
	.long L$set$114
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.set L$set$115,LCFI72-LCFI71
	.long L$set$115
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 3
LEFDE41:
	.ident	"GCC: (GNU) 14.1.0"
	.subsections_via_symbols
