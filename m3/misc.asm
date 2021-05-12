	.file	"misc.c"
	.text
.Ltext0:
	.globl	g5
	.data
	.align 32
	.type	g5, @object
	.size	g5, 40
g5:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.section	.rodata
.LC0:
	.string	"Hello World!\n"
	.text
	.globl	func
	.type	func, @function
func:
.LFB0:
	.file 1 "misc.c"
	.loc 1 27 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 29 0
	movl	$0, -12(%rbp)
	.loc 1 30 0
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 32 0
	movl	f2.1631(%rip), %eax
	addl	$1, %eax
	movl	%eax, f2.1631(%rip)
	.loc 1 33 0
	movl	f2.1631(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	g5(%rip), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 1 35 0
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	.loc 1 37 0 discriminator 3
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-12(%rbp), %eax
	leaq	0(,%rax,4), %rcx
	leaq	g5(%rip), %rax
	movl	%edx, (%rcx,%rax)
	.loc 1 38 0 discriminator 3
	movl	f2.1631(%rip), %eax
	addl	$1, %eax
	movl	%eax, f2.1631(%rip)
	.loc 1 35 0 discriminator 3
	addl	$1, -12(%rbp)
.L2:
	.loc 1 35 0 is_stmt 0 discriminator 1
	cmpl	$5, -12(%rbp)
	jbe	.L3
	.loc 1 41 0 is_stmt 1
	movl	f2.1631(%rip), %eax
	.loc 1 42 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func, .-func
	.local	f2.1631
	.comm	f2.1631,4,4
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF3
	.byte	0xc
	.long	.LASF4
	.long	.LASF5
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	0x44
	.long	0x3d
	.uleb128 0x3
	.long	0x3d
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.string	"g5"
	.byte	0x1
	.byte	0x18
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	g5
	.uleb128 0x7
	.long	.LASF6
	.byte	0x1
	.byte	0x1a
	.long	0x44
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc
	.uleb128 0x8
	.string	"f1"
	.byte	0x1
	.byte	0x1a
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"f2"
	.byte	0x1
	.byte	0x1c
	.long	0x44
	.uleb128 0x9
	.byte	0x3
	.quad	f2.1631
	.uleb128 0x9
	.string	"f3"
	.byte	0x1
	.byte	0x1d
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"f4"
	.byte	0x1
	.byte	0x1e
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x44
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0xa
	.byte	0x8
	.long	0xd6
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0xb
	.long	0xcf
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
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
.LASF1:
	.string	"unsigned int"
.LASF6:
	.string	"func"
.LASF4:
	.string	"misc.c"
.LASF0:
	.string	"sizetype"
.LASF2:
	.string	"char"
.LASF3:
	.string	"GNU C99 6.3.0 20170406 -mtune=generic -march=x86-64 -g -std=c99 -fstack-protector-strong"
.LASF5:
	.string	"/media/sf_embedded_system/ese-coursera-course1-master/assessments/m3"
	.ident	"GCC: (Ubuntu 6.3.0-12ubuntu2) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
