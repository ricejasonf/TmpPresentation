	.text
	.file	"./cpp/TagDispatch1.cpp"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movl	$_ZSt4cout, %edi
	movl	$.L.str, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_9
# BB#1:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	cmpb	$0, 56(%rbx)
	je	.LBB0_3
# BB#2:                                 # %if.then.i
	movb	67(%rbx), %al
	jmp	.LBB0_4
.LBB0_3:                                # %if.end.i
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_4:                                # %_ZNKSt5ctypeIcE5widenEc.exit
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_9
# BB#5:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit37
	cmpb	$0, 56(%rbx)
	je	.LBB0_7
# BB#6:                                 # %if.then.i.24
	movb	67(%rbx), %al
	jmp	.LBB0_8
.LBB0_7:                                # %if.end.i.28
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_8:                                # %_ZNKSt5ctypeIcE5widenEc.exit30
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB0_9:                                # %if.then.i.35
	callq	_ZSt16__throw_bad_castv
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_TagDispatch1.cpp,@function
_GLOBAL__sub_I_TagDispatch1.cpp:        # @_GLOBAL__sub_I_TagDispatch1.cpp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end1:
	.size	_GLOBAL__sub_I_TagDispatch1.cpp, .Lfunc_end1-_GLOBAL__sub_I_TagDispatch1.cpp
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tag1"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tag2"
	.size	.L.str.1, 5

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_TagDispatch1.cpp

	.ident	"clang version 3.8.0 (http://llvm.org/git/clang.git eb6222eaad7aaec5d9ec0ddd8d1f09e506e689bf) (http://llvm.org/git/llvm.git 08bd0b92116468b52776a55e1fb9dcd479c4a42d)"
	.section	".note.GNU-stack","",@progbits
