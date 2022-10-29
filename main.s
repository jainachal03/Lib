	.file	"main.c"
# GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.1) version 9.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu main.c -mtune=generic
# -march=x86-64 -fverbose-asm -fasynchronous-unwind-tables
# -fstack-protector-strong -Wformat -Wformat-security
# -fstack-clash-protection -fcf-protection
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fident -finline-atomics
# -fipa-stack-alignment -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flto-odr-type-merging -fmath-errno
# -fmerge-debug-strings -fpeephole -fplt -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap-separate
# -fsigned-zeros -fsplit-ivs-in-unroller -fssa-backprop
# -fstack-clash-protection -fstack-protector-strong -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.globl	_add
	.type	_add, @function
_add:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# head, head
	movl	%esi, -28(%rbp)	# val, val
# node.c:9:    if(head == NULL){
	cmpq	$0, -24(%rbp)	#, head
	jne	.L2	#,
# node.c:10:     head = (Node*)malloc(sizeof(Node));
	movl	$24, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp86, head
# node.c:11:     head->value = val;
	movq	-24(%rbp), %rax	# head, tmp87
	movl	-28(%rbp), %edx	# val, tmp88
	movl	%edx, (%rax)	# tmp88, head_17->value
# node.c:12:     head->next = 0;
	movq	-24(%rbp), %rax	# head, tmp89
	movq	$0, 8(%rax)	#, head_17->next
# node.c:13:     return head;
	movq	-24(%rbp), %rax	# head, _4
	jmp	.L3	#
.L2:
# node.c:16:    Node*temp = head;
	movq	-24(%rbp), %rax	# head, tmp90
	movq	%rax, -8(%rbp)	# tmp90, temp
# node.c:17:    while(temp->next != NULL){
	jmp	.L4	#
.L5:
# node.c:18:     temp = temp->next;
	movq	-8(%rbp), %rax	# temp, tmp91
	movq	8(%rax), %rax	# temp_3->next, tmp92
	movq	%rax, -8(%rbp)	# tmp92, temp
.L4:
# node.c:17:    while(temp->next != NULL){
	movq	-8(%rbp), %rax	# temp, tmp93
	movq	8(%rax), %rax	# temp_3->next, _1
# node.c:17:    while(temp->next != NULL){
	testq	%rax, %rax	# _1
	jne	.L5	#,
# node.c:20:    temp->next = (Node*)malloc(sizeof(Node));
	movl	$24, %edi	#,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp94, _2
# node.c:20:    temp->next = (Node*)malloc(sizeof(Node));
	movq	-8(%rbp), %rax	# temp, tmp95
	movq	%rdx, 8(%rax)	# _2, temp_3->next
# node.c:21:    temp = temp->next;
	movq	-8(%rbp), %rax	# temp, tmp96
	movq	8(%rax), %rax	# temp_3->next, tmp97
	movq	%rax, -8(%rbp)	# tmp97, temp
# node.c:22:    temp->value = val;
	movq	-8(%rbp), %rax	# temp, tmp98
	movl	-28(%rbp), %edx	# val, tmp99
	movl	%edx, (%rax)	# tmp99, temp_11->value
# node.c:23:    return head;
	movq	-24(%rbp), %rax	# head, _4
.L3:
# node.c:24: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	_add, .-_add
	.globl	add
	.type	add, @function
add:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# list, list
	movl	%esi, -12(%rbp)	# val, val
# linkedlist.c:7:     if(list == 0){
	cmpq	$0, -8(%rbp)	#, list
	jne	.L7	#,
# linkedlist.c:8:         list = (LinkedList*)malloc(sizeof(LinkedList));
	movl	$16, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp91, list
# linkedlist.c:9:         list->head = (Node*)malloc(sizeof(Node));
	movl	$24, %edi	#,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp92, _1
# linkedlist.c:9:         list->head = (Node*)malloc(sizeof(Node));
	movq	-8(%rbp), %rax	# list, tmp93
	movq	%rdx, (%rax)	# _1, list_18->head
# linkedlist.c:10:         list->size = 1;
	movq	-8(%rbp), %rax	# list, tmp94
	movl	$1, 8(%rax)	#, list_18->size
# linkedlist.c:11:         list->head = _add(list->head, val);
	movq	-8(%rbp), %rax	# list, tmp95
	movq	(%rax), %rax	# list_18->head, _2
	movl	-12(%rbp), %edx	# val, tmp96
	movl	%edx, %esi	# tmp96,
	movq	%rax, %rdi	# _2,
	call	_add	#
# linkedlist.c:11:         list->head = _add(list->head, val);
	movq	-8(%rbp), %rdx	# list, tmp97
	movq	%rax, (%rdx)	# _3, list_18->head
# linkedlist.c:12:         return list;
	movq	-8(%rbp), %rax	# list, _8
	jmp	.L8	#
.L7:
# linkedlist.c:14:     list->size++;
	movq	-8(%rbp), %rax	# list, tmp98
	movl	8(%rax), %eax	# list_10(D)->size, _4
# linkedlist.c:14:     list->size++;
	leal	1(%rax), %edx	#, _5
	movq	-8(%rbp), %rax	# list, tmp99
	movl	%edx, 8(%rax)	# _5, list_10(D)->size
# linkedlist.c:15:     list->head = _add(list->head, val);
	movq	-8(%rbp), %rax	# list, tmp100
	movq	(%rax), %rax	# list_10(D)->head, _6
	movl	-12(%rbp), %edx	# val, tmp101
	movl	%edx, %esi	# tmp101,
	movq	%rax, %rdi	# _6,
	call	_add	#
# linkedlist.c:15:     list->head = _add(list->head, val);
	movq	-8(%rbp), %rdx	# list, tmp102
	movq	%rax, (%rdx)	# _7, list_10(D)->head
# linkedlist.c:16:     return list;
	movq	-8(%rbp), %rax	# list, _8
.L8:
# linkedlist.c:17: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	add, .-add
	.globl	size
	.type	size, @function
size:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# list, list
# linkedlist.c:20:     if(list == 0)return -1;
	cmpq	$0, -8(%rbp)	#, list
	jne	.L10	#,
# linkedlist.c:20:     if(list == 0)return -1;
	movl	$-1, %eax	#, _1
	jmp	.L11	#
.L10:
# linkedlist.c:21:     return list->size;
	movq	-8(%rbp), %rax	# list, tmp84
	movl	8(%rax), %eax	# list_2(D)->size, _1
.L11:
# linkedlist.c:22: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	size, .-size
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"Value = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# main.c:7:     list = add(list, 1);
	movq	-8(%rbp), %rax	# list, tmp85
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	add	#
	movq	%rax, -8(%rbp)	# tmp86, list
# main.c:8:     list = add(list, 2);
	movq	-8(%rbp), %rax	# list, tmp87
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	add	#
	movq	%rax, -8(%rbp)	# tmp88, list
# main.c:9:     Node* head = list->head;
	movq	-8(%rbp), %rax	# list, tmp89
	movq	(%rax), %rax	# list_10->head, tmp90
	movq	%rax, -16(%rbp)	# tmp90, head
# main.c:10:     printf("%d\n", size(list));
	movq	-8(%rbp), %rax	# list, tmp91
	movq	%rax, %rdi	# tmp91,
	call	size	#
	movl	%eax, %esi	# _1,
	leaq	.LC0(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# main.c:11:     while(head != NULL){
	jmp	.L13	#
.L14:
# main.c:12:         printf("Value = %d\n", head->value);
	movq	-16(%rbp), %rax	# head, tmp92
	movl	(%rax), %eax	# head_3->value, _2
	movl	%eax, %esi	# _2,
	leaq	.LC1(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# main.c:13:         head = head->next;
	movq	-16(%rbp), %rax	# head, tmp93
	movq	8(%rax), %rax	# head_3->next, tmp94
	movq	%rax, -16(%rbp)	# tmp94, head
.L13:
# main.c:11:     while(head != NULL){
	cmpq	$0, -16(%rbp)	#, head
	jne	.L14	#,
# main.c:15:     exit(0);
	movl	$0, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
