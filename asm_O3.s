	.file	"lab2.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1797:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1797:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB3441:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rdi
	testq	%rdi, %rdi
	je	.L8
	cmpb	$0, 56(%rdi)
	je	.L5
	movsbl	67(%rdi), %esi
.L6:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
.L5:
	.cfi_restore_state
	movq	%rdi, 8(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	8(%rsp), %rdi
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	(%rdi), %rax
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L6
	movl	$10, %esi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L6
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0.cold, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0.cold:
.LFSB3441:
.L8:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -16
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE3441:
	.text
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.section	.text.unlikely
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0.cold, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0.cold
.LCOLDE0:
	.text
.LHOTE0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"cannot create std::vector larger than max_size()"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"Result check sum: "
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4
	.globl	_Z16heavyComputationm
	.type	_Z16heavyComputationm, @function
_Z16heavyComputationm:
.LFB2763:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2763
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rax
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	shrq	$60, %rax
	jne	.L95
	testq	%rdi, %rdi
	movq	%rdi, %r12
	je	.L40
	leaq	0(,%rdi,8), %r15
	movq	%r15, %rdi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, %r14
	leaq	-1(%r12), %rax
	cmpq	$2, %rax
	movq	%rax, -56(%rbp)
	jbe	.L41
	vbroadcastsd	.LC4(%rip), %ymm0
	movq	%r12, %rcx
	movq	%r14, %rax
	shrq	$2, %rcx
	salq	$5, %rcx
	leaq	(%rcx,%r14), %rdx
	andl	$32, %ecx
	je	.L14
	leaq	32(%r14), %rax
	vmovupd	%ymm0, (%r14)
	cmpq	%rdx, %rax
	je	.L100
.L14:
	vmovupd	%ymm0, (%rax)
	addq	$64, %rax
	vmovupd	%ymm0, -32(%rax)
	cmpq	%rdx, %rax
	jne	.L14
.L100:
	testb	$3, %r12b
	je	.L15
	movq	-56(%rbp), %rdx
	movq	%r12, %rax
	andq	$-4, %rax
	subq	%rax, %rdx
	leaq	(%r14,%rax,8), %rax
	vzeroupper
.L13:
	vmovsd	.LC4(%rip), %xmm0
	testq	%rdx, %rdx
	vmovsd	%xmm0, (%rax)
	jne	.L105
.L17:
	movq	%r15, %rdi
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	cmpq	$2, -56(%rbp)
	movq	%rax, %r13
	jbe	.L42
.L16:
	vbroadcastsd	.LC6(%rip), %ymm0
	movq	%r12, %rcx
	movq	%r13, %rax
	shrq	$2, %rcx
	salq	$5, %rcx
	leaq	(%rcx,%r13), %rdx
	andl	$32, %ecx
	je	.L19
	leaq	32(%r13), %rax
	vmovupd	%ymm0, 0(%r13)
	cmpq	%rdx, %rax
	je	.L99
.L19:
	vmovupd	%ymm0, (%rax)
	addq	$64, %rax
	vmovupd	%ymm0, -32(%rax)
	cmpq	%rdx, %rax
	jne	.L19
.L99:
	testb	$3, %r12b
	je	.L101
	movq	-56(%rbp), %rdx
	movq	%r12, %rax
	andq	$-4, %rax
	subq	%rax, %rdx
	leaq	0(%r13,%rax,8), %rax
	vzeroupper
.L18:
	vmovsd	.LC6(%rip), %xmm0
	testq	%rdx, %rdx
	vmovsd	%xmm0, (%rax)
	jne	.L106
.L20:
	movq	%r15, %rdi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%r15, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	memset@PLT
	xorl	%edx, %edx
	vxorps	%xmm3, %xmm3, %xmm3
.L22:
	vmovsd	(%r14,%rdx,8), %xmm2
	vmulsd	0(%r13,%rdx,8), %xmm2, %xmm2
	xorl	%eax, %eax
	vmovsd	(%rbx,%rdx,8), %xmm1
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L23:
	vcvtsi2sdq	%rax, %xmm3, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm0
	addq	$1, %rax
	cmpq	$100, %rax
	vaddsd	%xmm0, %xmm1, %xmm1
	jne	.L23
	vmovsd	%xmm1, (%rbx,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %r12
	jne	.L22
	cmpq	$2, -56(%rbp)
	jbe	.L43
	movq	%rdx, %rcx
	movq	%rbx, %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	shrq	$2, %rcx
	salq	$5, %rcx
	addq	%rbx, %rcx
.L26:
	vaddsd	(%rax), %xmm0, %xmm0
	addq	$32, %rax
	vaddsd	-24(%rax), %xmm0, %xmm0
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	cmpq	%rcx, %rax
	jne	.L26
	testb	$3, %dl
	je	.L27
	movq	%rdx, %rax
	andq	$-4, %rax
.L25:
	leaq	1(%rax), %rcx
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	cmpq	%rdx, %rcx
	jnb	.L27
	leaq	2(%rax), %rcx
	vaddsd	8(%rbx,%rax,8), %xmm0, %xmm0
	cmpq	%rdx, %rcx
	jnb	.L27
	vaddsd	16(%rbx,%rax,8), %xmm0, %xmm0
.L27:
	movq	%r15, %r12
.L12:
	movl	$18, %edx
	leaq	.LC7(%rip), %rsi
	vmovsd	%xmm0, -56(%rbp)
	leaq	_ZSt4cout(%rip), %rdi
.LEHB3:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-56(%rbp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdx,%rax), %r15
	testq	%r15, %r15
	je	.L96
	cmpb	$0, 56(%r15)
	je	.L29
	movsbl	67(%r15), %esi
.L30:
	movq	%rdx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
.LEHE3:
	testq	%rbx, %rbx
	je	.L31
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L31:
	testq	%r13, %r13
	je	.L32
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
.L32:
	testq	%r14, %r14
	je	.L103
	addq	$24, %rsp
	movq	%r12, %rsi
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
.LEHB4:
	jmp	_ZdlPvm@PLT
.LEHE4:
.L29:
	.cfi_restore_state
	movq	%r15, %rdi
	movq	%rdx, -56(%rbp)
.LEHB5:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	-56(%rbp), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L30
	movq	%r15, %rdi
	call	*%rax
.LEHE5:
	movq	-56(%rbp), %rdx
	movsbl	%al, %esi
	jmp	.L30
.L40:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%r13d, %r13d
	jmp	.L12
.L103:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L101:
	.cfi_restore_state
	vzeroupper
	jmp	.L20
.L15:
	movq	%r15, %rdi
	vzeroupper
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	%rax, %r13
	jmp	.L16
.L41:
	movq	%rax, %rdx
	movq	%r14, %rax
	jmp	.L13
.L106:
	cmpq	$1, %rdx
	vmovsd	%xmm0, 8(%rax)
	je	.L20
	vmovsd	%xmm0, 16(%rax)
	jmp	.L20
.L105:
	cmpq	$1, %rdx
	vmovsd	%xmm0, 8(%rax)
	je	.L17
	vmovsd	%xmm0, 16(%rax)
	jmp	.L17
.L42:
	movq	-56(%rbp), %rdx
	jmp	.L18
.L43:
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L25
.L93:
	endbr64
	jmp	.L94
.L46:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L37
.L47:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L39
	.section	.gcc_except_table,"a",@progbits
.LLSDA2763:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2763-.LLSDACSB2763
.LLSDACSB2763:
	.uleb128 .LEHB0-.LFB2763
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2763
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L47-.LFB2763
	.uleb128 0
	.uleb128 .LEHB2-.LFB2763
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L46-.LFB2763
	.uleb128 0
	.uleb128 .LEHB3-.LFB2763
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L93-.LFB2763
	.uleb128 0
	.uleb128 .LEHB4-.LFB2763
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2763
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L93-.LFB2763
	.uleb128 0
	.uleb128 .LEHB6-.LFB2763
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L47-.LFB2763
	.uleb128 0
.LLSDACSE2763:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2763
	.type	_Z16heavyComputationm.cold, @function
_Z16heavyComputationm.cold:
.LFSB2763:
.L96:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
.LEHB7:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE7:
.L95:
	leaq	.LC2(%rip), %rdi
.LEHB8:
	call	_ZSt20__throw_length_errorPKc@PLT
.L45:
	endbr64
.L94:
	testq	%rbx, %rbx
	movq	%rax, %r15
	jne	.L107
	vzeroupper
.L35:
	testq	%r13, %r13
	movq	%r15, %rbx
	movq	%r12, %r15
	jne	.L37
.L36:
	testq	%r14, %r14
	movq	%r12, %r15
	je	.L38
.L39:
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
.L38:
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE8:
.L107:
	movq	%r12, %rsi
	movq	%rbx, %rdi
	vzeroupper
	call	_ZdlPvm@PLT
	jmp	.L35
.L37:
	movq	%r15, %rsi
	movq	%r13, %rdi
	movq	%r15, %r12
	call	_ZdlPvm@PLT
	jmp	.L36
	.cfi_endproc
.LFE2763:
	.section	.gcc_except_table
.LLSDAC2763:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2763-.LLSDACSBC2763
.LLSDACSBC2763:
	.uleb128 .LEHB7-.LCOLDB8
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L45-.LCOLDB8
	.uleb128 0
	.uleb128 .LEHB8-.LCOLDB8
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC2763:
	.section	.text.unlikely
	.text
	.size	_Z16heavyComputationm, .-_Z16heavyComputationm
	.section	.text.unlikely
	.size	_Z16heavyComputationm.cold, .-_Z16heavyComputationm.cold
.LCOLDE8:
	.text
.LHOTE8:
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"=== LAB 2: Performance Measurement ==="
	.align 8
.LC12:
	.string	"----------------------------------------"
	.section	.rodata.str1.1
.LC13:
	.string	"[STATISTICS] Execution time: "
.LC14:
	.string	" seconds ("
.LC15:
	.string	" ms)"
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"[STATISTICS] Processed elements: "
	.section	.rodata.str1.1
.LC17:
	.string	"=== Done ==="
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2764:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$38, %edx
	leaq	.LC9(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$5000000, %edi
	movq	%rax, %rbx
	call	_Z16heavyComputationm
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$40, %edx
	leaq	.LC12(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	subq	%rbx, %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vdivsd	.LC10(%rip), %xmm0, %xmm1
	vdivsd	.LC11(%rip), %xmm0, %xmm0
	vmovsd	%xmm1, (%rsp)
	vmovsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movl	$29, %edx
	leaq	.LC13(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	8(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$10, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	(%rsp), %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movl	$33, %edx
	leaq	.LC16(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$5000000, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movl	$12, %edx
	leaq	.LC17(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2764:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	-1821066134
	.long	1072694296
	.align 8
.LC6:
	.long	652835029
	.long	1072695345
	.align 8
.LC10:
	.long	0
	.long	1093567616
	.align 8
.LC11:
	.long	0
	.long	1104006501
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
