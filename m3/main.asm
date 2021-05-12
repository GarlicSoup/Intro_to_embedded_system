	.file	"main.c"
	.text
.Ltext0:
	.local	g1
	.comm	g1,4,4
	.globl	g2
	.section	.rodata
	.align 4
	.type	g2, @object
	.size	g2, 4
g2:
	.long	45
	.globl	g3
	.data
	.type	g3, @object
	.size	g3, 1
g3:
	.byte	12
	.globl	g4
	.bss
	.type	g4, @object
	.size	g4, 1
g4:
	.zero	1
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "main.c"
	.loc 1 33 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	.loc 1 36 0
	movl	$12, -28(%rbp)
	.loc 1 38 0
	movl	$45, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	.loc 1 40 0
	cmpq	$0, -24(%rbp)
	jne	.L2
	.loc 1 42 0
	movl	$-1, %eax
	jmp	.L3
.L2:
	.loc 1 45 0
	movl	$0, %ebx
	jmp	.L4
.L5:
	.loc 1 47 0 discriminator 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	func@PLT
	movl	%eax, g1(%rip)
	.loc 1 45 0 discriminator 3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.L4:
	.loc 1 45 0 is_stmt 0 discriminator 1
	movl	$45, %eax
	cmpl	%eax, %ebx
	jl	.L5
	.loc 1 50 0 is_stmt 1
	movl	$0, %eax
.L3:
	.loc 1 51 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x139
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF10
	.byte	0xc
	.long	.LASF11
	.long	.LASF12
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	0x3b
	.uleb128 0x5
	.long	0x3b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x6
	.string	"g1"
	.byte	0x1
	.byte	0x1a
	.long	0x3b
	.uleb128 0x9
	.byte	0x3
	.quad	g1
	.uleb128 0x7
	.string	"g2"
	.byte	0x1
	.byte	0x1b
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	g2
	.uleb128 0x7
	.string	"g3"
	.byte	0x1
	.byte	0x1c
	.long	0xb2
	.uleb128 0x9
	.byte	0x3
	.quad	g3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x7
	.string	"g4"
	.byte	0x1
	.byte	0x1d
	.long	0xb2
	.uleb128 0x9
	.byte	0x3
	.quad	g4
	.uleb128 0x8
	.long	0xb2
	.long	0xdd
	.uleb128 0x9
	.long	0xdd
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0xa
	.string	"g5"
	.byte	0x1
	.byte	0x1e
	.long	0xcd
	.uleb128 0xb
	.long	.LASF13
	.byte	0x1
	.byte	0x20
	.long	0x3b
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x136
	.uleb128 0x6
	.string	"l1"
	.byte	0x1
	.byte	0x22
	.long	0x3b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x6
	.string	"l2"
	.byte	0x1
	.byte	0x23
	.long	0x136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"l3"
	.byte	0x1
	.byte	0x24
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x3b
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF12:
	.string	"/media/sf_embedded_system/ese-coursera-course1-master/assessments/m3"
.LASF13:
	.string	"main"
.LASF5:
	.string	"unsigned int"
.LASF8:
	.string	"char"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF11:
	.string	"main.c"
.LASF10:
	.string	"GNU C99 6.3.0 20170406 -mtune=generic -march=x86-64 -g -std=c99 -fstack-protector-strong"
.LASF1:
	.string	"short int"
.LASF2:
	.string	"long int"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (Ubuntu 6.3.0-12ubuntu2) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
