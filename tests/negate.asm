	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$4, _a__str__8_
# was:	la	_a__str__8__addr, _a__str__8_
	ori	$3, $0, 1
# was:	ori	_a__str__8__init, $0, 1
	sw	$3, 0($4)
# was:	sw	_a__str__8__init, 0(_a__str__8__addr)
	la	$4, _true
# was:	la	_true_addr, _true
	ori	$3, $0, 4
# was:	ori	_true_init, $0, 4
	sw	$3, 0($4)
# was:	sw	_true_init, 0(_true_addr)
	la	$3, _false
# was:	la	_false_addr, _false
	ori	$4, $0, 5
# was:	ori	_false_init, $0, 5
	sw	$4, 0($3)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function write_nl
write_nl:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
# 	ori	_param_b_1_,$2,0
	ori	$16, $2, 0
# was:	ori	_tmp_4_, _param_b_1_, 0
# 	ori	_letBind_3_,_tmp_4_,0
	la	$2, _true
# was:	la	$2, _true
	bne	$16, $0, _wBoolF_5_
# was:	bne	_letBind_3_, $0, _wBoolF_5_
	la	$2, _false
# was:	la	$2, _false
_wBoolF_5_:
	jal	putstring
# was:	jal	putstring, $2
	la	$2, _a__str__8_
# was:	la	_tmp_7_, _a__str__8_
# _a__str__8_: string "\n"
# 	ori	_letBind_6_,_tmp_7_,0
# 	ori	$2,_tmp_7_,0
	jal	putstring
# was:	jal	putstring, $2
	ori	$2, $16, 0
# was:	ori	_write_nlres_2_, _letBind_3_, 0
# 	ori	$2,_write_nlres_2_,0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -20
	ori	$2, $0, 3
# was:	ori	_divide_L_14_, $0, 3
	ori	$3, $0, 2
# was:	ori	_divide_R_15_, $0, 2
	beq	$3, $0, _divByZero_16_
# was:	beq	_divide_R_15_, $0, _divByZero_16_
	div	$4, $2, $3
# was:	div	_eq_L_12_, _divide_L_14_, _divide_R_15_
	j	_endLab_17_
_divByZero_16_:
	ori	$5, $0, 7
# was:	ori	$5, $0, 7
	la	$6, _Msg_DivZero_
# was:	la	$6, _Msg_DivZero_
	j	_RuntimeError_
_endLab_17_:
	ori	$2, $0, 1
# was:	ori	_eq_R_13_, $0, 1
	ori	$3, $0, 0
# was:	ori	_arg_11_, $0, 0
	bne	$4, $2, _false_18_
# was:	bne	_eq_L_12_, _eq_R_13_, _false_18_
	ori	$3, $0, 1
# was:	ori	_arg_11_, $0, 1
_false_18_:
	ori	$2, $3, 0
# was:	ori	$2, _arg_11_, 0
	jal	write_nl
# was:	jal	write_nl, $2
	ori	$18, $2, 0
# was:	ori	_letBind_10_, $2, 0
	ori	$3, $0, 0
# was:	ori	_0_26_, $0, 0
	ori	$2, $0, 3
# was:	ori	_Negate_25_, $0, 3
	sub	$2, $3, $2
# was:	sub	_divide_L_23_, _0_26_, _Negate_25_
	ori	$3, $0, 2
# was:	ori	_divide_R_24_, $0, 2
	beq	$3, $0, _divByZero_27_
# was:	beq	_divide_R_24_, $0, _divByZero_27_
	div	$2, $2, $3
# was:	div	_eq_L_21_, _divide_L_23_, _divide_R_24_
	j	_endLab_28_
_divByZero_27_:
	ori	$5, $0, 8
# was:	ori	$5, $0, 8
	la	$6, _Msg_DivZero_
# was:	la	$6, _Msg_DivZero_
	j	_RuntimeError_
_endLab_28_:
	ori	$4, $0, 0
# was:	ori	_0_30_, $0, 0
	ori	$3, $0, 2
# was:	ori	_Negate_29_, $0, 2
	sub	$3, $4, $3
# was:	sub	_eq_R_22_, _0_30_, _Negate_29_
	ori	$4, $0, 0
# was:	ori	_arg_20_, $0, 0
	bne	$2, $3, _false_31_
# was:	bne	_eq_L_21_, _eq_R_22_, _false_31_
	ori	$4, $0, 1
# was:	ori	_arg_20_, $0, 1
_false_31_:
	ori	$2, $4, 0
# was:	ori	$2, _arg_20_, 0
	jal	write_nl
# was:	jal	write_nl, $2
	ori	$17, $2, 0
# was:	ori	_letBind_19_, $2, 0
	ori	$3, $0, 3
# was:	ori	_divide_L_36_, $0, 3
	ori	$4, $0, 0
# was:	ori	_0_39_, $0, 0
	ori	$2, $0, 2
# was:	ori	_Negate_38_, $0, 2
	sub	$2, $4, $2
# was:	sub	_divide_R_37_, _0_39_, _Negate_38_
	beq	$2, $0, _divByZero_40_
# was:	beq	_divide_R_37_, $0, _divByZero_40_
	div	$2, $3, $2
# was:	div	_eq_L_34_, _divide_L_36_, _divide_R_37_
	j	_endLab_41_
_divByZero_40_:
	ori	$5, $0, 9
# was:	ori	$5, $0, 9
	la	$6, _Msg_DivZero_
# was:	la	$6, _Msg_DivZero_
	j	_RuntimeError_
_endLab_41_:
	ori	$4, $0, 0
# was:	ori	_0_43_, $0, 0
	ori	$3, $0, 2
# was:	ori	_Negate_42_, $0, 2
	sub	$3, $4, $3
# was:	sub	_eq_R_35_, _0_43_, _Negate_42_
	ori	$4, $0, 0
# was:	ori	_arg_33_, $0, 0
	bne	$2, $3, _false_44_
# was:	bne	_eq_L_34_, _eq_R_35_, _false_44_
	ori	$4, $0, 1
# was:	ori	_arg_33_, $0, 1
_false_44_:
	ori	$2, $4, 0
# was:	ori	$2, _arg_33_, 0
	jal	write_nl
# was:	jal	write_nl, $2
	ori	$16, $2, 0
# was:	ori	_letBind_32_, $2, 0
	ori	$3, $0, 0
# was:	ori	_0_52_, $0, 0
	ori	$2, $0, 3
# was:	ori	_Negate_51_, $0, 3
	sub	$3, $3, $2
# was:	sub	_divide_L_49_, _0_52_, _Negate_51_
	ori	$4, $0, 0
# was:	ori	_0_54_, $0, 0
	ori	$2, $0, 2
# was:	ori	_Negate_53_, $0, 2
	sub	$2, $4, $2
# was:	sub	_divide_R_50_, _0_54_, _Negate_53_
	beq	$2, $0, _divByZero_55_
# was:	beq	_divide_R_50_, $0, _divByZero_55_
	div	$2, $3, $2
# was:	div	_eq_L_47_, _divide_L_49_, _divide_R_50_
	j	_endLab_56_
_divByZero_55_:
	ori	$5, $0, 10
# was:	ori	$5, $0, 10
	la	$6, _Msg_DivZero_
# was:	la	$6, _Msg_DivZero_
	j	_RuntimeError_
_endLab_56_:
	ori	$3, $0, 1
# was:	ori	_eq_R_48_, $0, 1
	ori	$4, $0, 0
# was:	ori	_arg_46_, $0, 0
	bne	$2, $3, _false_57_
# was:	bne	_eq_L_47_, _eq_R_48_, _false_57_
	ori	$4, $0, 1
# was:	ori	_arg_46_, $0, 1
_false_57_:
	ori	$2, $4, 0
# was:	ori	$2, _arg_46_, 0
	jal	write_nl
# was:	jal	write_nl, $2
# 	ori	_letBind_45_,$2,0
# 	ori	_And_L_65_,_letBind_10_,0
	ori	$4, $0, 0
# was:	ori	_falseReg_67_, $0, 0
	ori	$3, $0, 0
# was:	ori	_And_L_62_, $0, 0
	beq	$18, $4, _false_68_
# was:	beq	_And_L_65_, _falseReg_67_, _false_68_
# 	ori	_And_R_66_,_letBind_19_,0
	beq	$17, $4, _false_68_
# was:	beq	_And_R_66_, _falseReg_67_, _false_68_
	ori	$3, $0, 1
# was:	ori	_And_L_62_, $0, 1
_false_68_:
	ori	$5, $0, 0
# was:	ori	_falseReg_64_, $0, 0
	ori	$4, $0, 0
# was:	ori	_And_L_59_, $0, 0
	beq	$3, $5, _false_69_
# was:	beq	_And_L_62_, _falseReg_64_, _false_69_
# 	ori	_And_R_63_,_letBind_32_,0
	beq	$16, $5, _false_69_
# was:	beq	_And_R_63_, _falseReg_64_, _false_69_
	ori	$4, $0, 1
# was:	ori	_And_L_59_, $0, 1
_false_69_:
	ori	$3, $0, 0
# was:	ori	_falseReg_61_, $0, 0
	ori	$5, $0, 0
# was:	ori	_arg_58_, $0, 0
	beq	$4, $3, _false_70_
# was:	beq	_And_L_59_, _falseReg_61_, _false_70_
# 	ori	_And_R_60_,_letBind_45_,0
	beq	$2, $3, _false_70_
# was:	beq	_And_R_60_, _falseReg_61_, _false_70_
	ori	$5, $0, 1
# was:	ori	_arg_58_, $0, 1
_false_70_:
	ori	$2, $5, 0
# was:	ori	$2, _arg_58_, 0
	jal	write_nl
# was:	jal	write_nl, $2
# 	ori	_mainres_9_,$2,0
# 	ori	$2,_mainres_9_,0
	addi	$29, $29, 20
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_RuntimeError_:
	la	$4, _ErrMsg_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _colon_space_
	ori	$2, $0, 4
	syscall
	ori	$4, $6, 0
	ori	$2, $0, 4
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
# Fixed strings for I/O
_ErrMsg_:
	.asciiz	"Runtime error at line "
_colon_space_:
	.asciiz	": "
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
# Message strings for specific errors
_Msg_IllegalArraySize_:
	.asciiz	"negative array size"
_Msg_IllegalIndex_:
	.asciiz	"array index out of bounds"
_Msg_DivZero_:
	.asciiz	"division by zero"
# String Literals
	.align	2
_a__str__8_:
	.space	4
	.asciiz	"\n"
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000