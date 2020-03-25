	.file	"main.cpp"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Hello, World!\0"
.LC2:
	.ascii " \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1740:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	movl	$80, %edi
	movl	%ecx, %ebx
	movq	%rdx, %rsi
	call	__main
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$13, %r8d
	leaq	.LC0(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	cmpl	$1, %ebx
	jg	.L30
.L2:
	movq	.refptr._ZSt4cout(%rip), %rsi
	xorl	%r12d, %r12d
	pxor	%xmm8, %xmm8
	leaq	.LC2(%rip), %rbx
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L31:
	cmpl	$2, %r12d
	je	.L5
.L6:
	addl	$1, %r12d
	cmpl	%edi, %r12d
	jge	.L3
.L14:
	testb	$1, %r12b
	je	.L31
	pxor	%xmm7, %xmm7
	cvtsi2sdl	%r12d, %xmm7
	ucomisd	%xmm7, %xmm8
	movapd	%xmm7, %xmm6
	sqrtsd	%xmm6, %xmm6
	ja	.L32
	cvttsd2sil	%xmm6, %eax
	imull	%eax, %eax
	cmpl	%r12d, %eax
	je	.L6
.L9:
	movl	$3, %ecx
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L33:
	movl	%r12d, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.L6
	addl	$2, %ecx
.L13:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	comisd	%xmm0, %xmm6
	jnb	.L33
.L5:
	movl	%r12d, %edx
	movq	%rsi, %rcx
	addl	$1, %r12d
	call	_ZNSolsEi
	movl	$1, %r8d
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpl	%edi, %r12d
	jl	.L14
.L3:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	nop
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	64(%rsp), %xmm8
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L30:
	movq	8(%rsi), %rcx
	movl	$10, %r8d
	xorl	%edx, %edx
	call	strtol
	movl	%eax, %edi
	testl	%eax, %eax
	jg	.L2
	jmp	.L3
.L32:
	movapd	%xmm7, %xmm0
	call	sqrt
	cvttsd2sil	%xmm6, %eax
	imull	%eax, %eax
	cmpl	%r12d, %eax
	je	.L6
	ucomisd	%xmm7, %xmm8
	jbe	.L9
	movl	$3, %ebp
	jmp	.L11
.L34:
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	je	.L6
	addl	$2, %ebp
.L11:
	movapd	%xmm7, %xmm0
	call	sqrt
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	comisd	%xmm0, %xmm6
	jnb	.L34
	jmp	.L5
	.seh_endproc
	.text
	.p2align 4
	.globl	_Z7isPrimei
	.def	_Z7isPrimei;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7isPrimei
_Z7isPrimei:
.LFB1741:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	testb	$1, %cl
	jne	.L36
	cmpl	$2, %ecx
	sete	%al
.L35:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	movl	%ecx, %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm7, %xmm7
	sarl	$31, %edx
	movl	%edx, %eax
	xorl	%ecx, %eax
	subl	%edx, %eax
	cvtsi2sdl	%eax, %xmm0
	ucomisd	%xmm0, %xmm7
	movapd	%xmm0, %xmm6
	sqrtsd	%xmm6, %xmm6
	ja	.L52
.L38:
	cvttsd2sil	%xmm6, %eax
	imull	%eax, %eax
	cmpl	%ecx, %eax
	je	.L39
	pxor	%xmm8, %xmm8
	cvtsi2sdl	%ecx, %xmm8
	ucomisd	%xmm8, %xmm7
	movapd	%xmm8, %xmm6
	sqrtsd	%xmm6, %xmm6
	ja	.L53
	movl	$3, %r8d
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L45:
	movl	%ecx, %eax
	cltd
	idivl	%r8d
	testl	%edx, %edx
	je	.L39
	addl	$2, %r8d
.L40:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r8d, %xmm0
	comisd	%xmm0, %xmm6
	jnb	.L45
.L41:
	movl	$1, %eax
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L39:
	xorl	%eax, %eax
	jmp	.L35
.L53:
	movl	$3, %ebx
	jmp	.L44
.L54:
	movl	96(%rsp), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	je	.L39
	addl	$2, %ebx
.L44:
	movapd	%xmm8, %xmm0
	movl	%ecx, 96(%rsp)
	call	sqrt
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	comisd	%xmm0, %xmm6
	jnb	.L54
	jmp	.L41
.L52:
	movl	%ecx, 96(%rsp)
	call	sqrt
	movl	96(%rsp), %ecx
	jmp	.L38
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB2165:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	movq	.refptr.__dso_handle(%rip), %r8
	leaq	_ZStL8__ioinit(%rip), %rdx
	leaq	_ZNSt8ios_base4InitD1Ev(%rip), %rcx
	addq	$40, %rsp
	jmp	__cxa_atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (GNU) 9.2.0"
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l;	.scl	2;	.type	32;	.endef
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	strtol;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZNSt8ios_base4InitD1Ev, "dr"
	.globl	.refptr._ZNSt8ios_base4InitD1Ev
	.linkonce	discard
.refptr._ZNSt8ios_base4InitD1Ev:
	.quad	_ZNSt8ios_base4InitD1Ev
	.section	.rdata$.refptr.__dso_handle, "dr"
	.globl	.refptr.__dso_handle
	.linkonce	discard
.refptr.__dso_handle:
	.quad	__dso_handle
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
