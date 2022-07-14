	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_main
	.p2align	4, 0x90
_main:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main10testStructV6param1Sivg
	.globl	_$s4main10testStructV6param1Sivg
	.p2align	4, 0x90
_$s4main10testStructV6param1Sivg:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main10testStructV6param1Sivs
	.globl	_$s4main10testStructV6param1Sivs
	.p2align	4, 0x90
_$s4main10testStructV6param1Sivs:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, (%r13)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main10testStructV6param1SivM
	.globl	_$s4main10testStructV6param1SivM
	.p2align	4, 0x90
_$s4main10testStructV6param1SivM:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_$s4main10testStructV6param1SivM.resume.0(%rip), %rax
	movq	%r13, %rdx
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_$s4main10testStructV6param1SivM.resume.0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main10testStructV6param2Sivg
	.globl	_$s4main10testStructV6param2Sivg
	.p2align	4, 0x90
_$s4main10testStructV6param2Sivg:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, %rax
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main10testStructV6param2Sivs
	.globl	_$s4main10testStructV6param2Sivs
	.p2align	4, 0x90
_$s4main10testStructV6param2Sivs:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, 8(%r13)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main10testStructV6param2SivM
	.globl	_$s4main10testStructV6param2SivM
	.p2align	4, 0x90
_$s4main10testStructV6param2SivM:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r13
	.cfi_offset %r13, -24
	addq	$8, %r13
	leaq	_$s4main10testStructV6param2SivM.resume.0(%rip), %rax
	movq	%r13, %rdx
	popq	%r13
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_$s4main10testStructV6param2SivM.resume.0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main10testStructV6param16param2ACSi_SitcfC
	.globl	_$s4main10testStructV6param16param2ACSi_SitcfC
	.p2align	4, 0x90
_$s4main10testStructV6param16param2ACSi_SitcfC:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movq	%rsi, %rdx
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main12testFunctionAA0B6StructVyF
	.globl	_$s4main12testFunctionAA0B6StructVyF
	.p2align	4, 0x90
_$s4main12testFunctionAA0B6StructVyF:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %edi
	movl	$2, %esi
	callq	_$s4main10testStructV6param16param2ACSi_SitcfC
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main5main0yyF
	.globl	_$s4main5main0yyF
	.p2align	4, 0x90
_$s4main5main0yyF:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -16(%rbp)
	callq	_$s4main12testFunctionAA0B6StructVyF
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	___swift_memcpy16_8
	.globl	___swift_memcpy16_8
	.weak_definition	___swift_memcpy16_8
	.p2align	4, 0x90
___swift_memcpy16_8:
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	%rdi, %rax
	retq

	.private_extern	___swift_noop_void_return
	.globl	___swift_noop_void_return
	.weak_definition	___swift_noop_void_return
	.p2align	4, 0x90
___swift_noop_void_return:
	retq

	.p2align	4, 0x90
_$s4main10testStructVwet:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	cmpl	%esi, %eax
	movl	%esi, -4(%rbp)
	movq	%rdi, -16(%rbp)
	je	LBB14_14
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	jbe	LBB14_13
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$16, %rdx
	testb	$1, %al
	movq	%rcx, -24(%rbp)
	movq	%rdx, -32(%rbp)
	jne	LBB14_3
	jmp	LBB14_4
LBB14_3:
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB14_11
LBB14_4:
	movb	$1, %al
	testb	$1, %al
	jne	LBB14_5
	jmp	LBB14_6
LBB14_5:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -36(%rbp)
	jmp	LBB14_11
LBB14_6:
	xorl	%eax, %eax
	testb	$1, %al
	jne	LBB14_7
	jmp	LBB14_8
LBB14_7:
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	movl	%ecx, -36(%rbp)
	jmp	LBB14_11
LBB14_8:
	xorl	%eax, %eax
	testb	$1, %al
	jne	LBB14_9
	jmp	LBB14_10
LBB14_9:
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -36(%rbp)
	jmp	LBB14_11
LBB14_10:
	ud2
LBB14_11:
	movl	-36(%rbp), %eax
	cmpl	$0, %eax
	je	LBB14_13
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edx
	orl	%eax, %edx
	addl	$0, %edx
	movl	%edx, -40(%rbp)
	jmp	LBB14_15
LBB14_13:
	movl	$4294967295, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB14_15
LBB14_14:
	movl	$4294967295, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB14_15
LBB14_15:
	movl	-40(%rbp), %eax
	addl	$1, %eax
	popq	%rbp
	retq

	.p2align	4, 0x90
_$s4main10testStructVwst:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	movq	%rdi, %r8
	addq	$16, %r8
	cmpl	$0, %edx
	movl	%esi, -4(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%r8, -24(%rbp)
	movl	%eax, -28(%rbp)
	jbe	LBB15_2
	movl	$1, %eax
	movl	%eax, -28(%rbp)
LBB15_2:
	movl	-28(%rbp), %eax
	movl	-4(%rbp), %ecx
	cmpl	$0, %ecx
	movl	%eax, -32(%rbp)
	ja	LBB15_14
	movl	-32(%rbp), %eax
	cmpl	$0, %eax
	jne	LBB15_5
	jmp	LBB15_12
LBB15_5:
	movl	-32(%rbp), %eax
	cmpl	$1, %eax
	jne	LBB15_7
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	jmp	LBB15_12
LBB15_7:
	movl	-32(%rbp), %eax
	cmpl	$2, %eax
	jne	LBB15_9
	movq	-24(%rbp), %rax
	movw	$0, (%rax)
	jmp	LBB15_12
LBB15_9:
	movl	-32(%rbp), %eax
	cmpl	$4, %eax
	jne	LBB15_11
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	jmp	LBB15_12
LBB15_11:
	ud2
LBB15_12:
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	je	LBB15_26
	jmp	LBB15_26
LBB15_14:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	subl	$0, %eax
	movb	$1, %cl
	testb	$1, %cl
	movl	$1, %edx
	movl	%eax, %esi
	movl	%eax, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%esi, -44(%rbp)
	jne	LBB15_16
	movl	$128, %ecx
	movl	-36(%rbp), %eax
	shrl	%cl, %eax
	addl	$1, %eax
	movl	-36(%rbp), %esi
	andl	%esi, %edx
	movl	%eax, -40(%rbp)
	movl	%edx, -44(%rbp)
LBB15_16:
	movl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	movl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	$0, 8(%rsi)
	movl	-32(%rbp), %eax
	cmpl	$0, %eax
	movl	%ecx, -48(%rbp)
	jne	LBB15_18
	jmp	LBB15_25
LBB15_18:
	movl	-32(%rbp), %eax
	cmpl	$1, %eax
	jne	LBB15_20
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movb	%al, (%rcx)
	jmp	LBB15_25
LBB15_20:
	movl	-32(%rbp), %eax
	cmpl	$2, %eax
	jne	LBB15_22
	movl	-48(%rbp), %eax
	movw	%ax, %cx
	movq	-24(%rbp), %rdx
	movw	%cx, (%rdx)
	jmp	LBB15_25
LBB15_22:
	movl	-32(%rbp), %eax
	cmpl	$4, %eax
	jne	LBB15_24
	movq	-24(%rbp), %rax
	movl	-48(%rbp), %ecx
	movl	%ecx, (%rax)
	jmp	LBB15_25
LBB15_24:
	ud2
LBB15_25:
	jmp	LBB15_26
LBB15_26:
	popq	%rbp
	retq

	.private_extern	_$s4main10testStructVMa
	.globl	_$s4main10testStructVMa
	.p2align	4, 0x90
_$s4main10testStructVMa:
	leaq	_$s4main10testStructVMf+8(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	retq

	.p2align	4, 0x90
l_coro.devirt.trigger:
	.cfi_startproc
	retq
	.cfi_endproc

	.section	__DATA,__const
	.p2align	3
_$s4main10testStructVWV:
	.quad	___swift_memcpy16_8
	.quad	___swift_noop_void_return
	.quad	___swift_memcpy16_8
	.quad	___swift_memcpy16_8
	.quad	___swift_memcpy16_8
	.quad	___swift_memcpy16_8
	.quad	_$s4main10testStructVwet
	.quad	_$s4main10testStructVwst
	.quad	16
	.quad	16
	.long	7
	.long	0

	.section	__TEXT,__const
l___unnamed_1:
	.asciz	"main"

	.private_extern	_$s4mainMXM
	.globl	_$s4mainMXM
	.weak_definition	_$s4mainMXM
	.p2align	2
_$s4mainMXM:
	.long	0
	.long	0
	.long	(l___unnamed_1-_$s4mainMXM)-8

l___unnamed_2:
	.asciz	"testStruct"

	.private_extern	_$s4main10testStructVMn
	.globl	_$s4main10testStructVMn
	.p2align	2
_$s4main10testStructVMn:
	.long	81
	.long	(_$s4mainMXM-_$s4main10testStructVMn)-4
	.long	(l___unnamed_2-_$s4main10testStructVMn)-8
	.long	(_$s4main10testStructVMa-_$s4main10testStructVMn)-12
	.long	(_$s4main10testStructVMF-_$s4main10testStructVMn)-16
	.long	2
	.long	2

	.section	__DATA,__const
	.p2align	3
_$s4main10testStructVMf:
	.quad	_$s4main10testStructVWV
	.quad	512
	.quad	_$s4main10testStructVMn
	.long	0
	.long	8

	.private_extern	"_symbolic _____ 4main10testStructV"
	.section	__TEXT,__swift5_typeref,regular,no_dead_strip
	.globl	"_symbolic _____ 4main10testStructV"
	.weak_definition	"_symbolic _____ 4main10testStructV"
	.p2align	1
"_symbolic _____ 4main10testStructV":
	.byte	1
	.long	(_$s4main10testStructVMn-"_symbolic _____ 4main10testStructV")-1
	.byte	0

	.private_extern	"_symbolic Si"
	.globl	"_symbolic Si"
	.weak_definition	"_symbolic Si"
	.p2align	1
"_symbolic Si":
	.ascii	"Si"
	.byte	0

	.section	__TEXT,__swift5_reflstr,regular,no_dead_strip
L___unnamed_3:
	.asciz	"param1"

L___unnamed_4:
	.asciz	"param2"

	.section	__TEXT,__swift5_fieldmd,regular,no_dead_strip
	.p2align	2
_$s4main10testStructVMF:
	.long	"_symbolic _____ 4main10testStructV"-_$s4main10testStructVMF
	.long	0
	.short	0
	.short	12
	.long	2
	.long	2
	.long	("_symbolic Si"-_$s4main10testStructVMF)-20
	.long	(L___unnamed_3-_$s4main10testStructVMF)-24
	.long	2
	.long	("_symbolic Si"-_$s4main10testStructVMF)-32
	.long	(L___unnamed_4-_$s4main10testStructVMF)-36

	.section	__TEXT,__swift5_types,regular,no_dead_strip
	.p2align	2
l_type_metadata_table:
	.long	_$s4main10testStructVMn-l_type_metadata_table

	.private_extern	___swift_reflection_version
	.section	__TEXT,__const
	.globl	___swift_reflection_version
	.weak_definition	___swift_reflection_version
	.p2align	1
___swift_reflection_version:
	.short	3

	.no_dead_strip	_$s4main10testStructVMF
	.no_dead_strip	l_type_metadata_table
	.no_dead_strip	___swift_reflection_version
	.linker_option "-lswiftSwiftOnoneSupport"
	.linker_option "-lswiftCore"
	.linker_option "-lobjc"
	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	84019008


	.globl	_$s4main10testStructVN
	.private_extern	_$s4main10testStructVN
	.alt_entry	_$s4main10testStructVN
.set _$s4main10testStructVN, _$s4main10testStructVMf+8
.subsections_via_symbols
