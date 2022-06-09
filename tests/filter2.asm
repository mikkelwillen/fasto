	.text	0x00400000
	.globl	main
	la	$28, _heap_
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
# Function writeBool
writeBool:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
# 	ori	_param_x_1_,$2,0
	ori	$16, $2, 0
# was:	ori	_tmp_3_, _param_x_1_, 0
# 	ori	_writeBoolres_2_,_tmp_3_,0
	la	$2, _true
# was:	la	$2, _true
	bne	$16, $0, _wBoolF_4_
# was:	bne	_writeBoolres_2_, $0, _wBoolF_4_
	la	$2, _false
# was:	la	$2, _false
_wBoolF_4_:
	jal	putstring
# was:	jal	putstring, $2
	ori	$2, $16, 0
# was:	ori	$2, _writeBoolres_2_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function writeBoolArray
writeBoolArray:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
# 	ori	_param_x_5_,$2,0
# 	ori	_arr_reg_8_,_param_x_5_,0
	lw	$16, 0($2)
# was:	lw	_size_reg_7_, 0(_arr_reg_8_)
	ori	$17, $28, 0
# was:	ori	_writeBoolArrayres_6_, $28, 0
	addi	$3, $16, 3
# was:	addi	_tmp_17_, _size_reg_7_, 3
	sra	$3, $3, 2
# was:	sra	_tmp_17_, _tmp_17_, 2
	sll	$3, $3, 2
# was:	sll	_tmp_17_, _tmp_17_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_17_, _tmp_17_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_17_
	sw	$16, 0($17)
# was:	sw	_size_reg_7_, 0(_writeBoolArrayres_6_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_11_, _writeBoolArrayres_6_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_12_, $0, 0
	addi	$20, $2, 4
# was:	addi	_elem_reg_9_, _arr_reg_8_, 4
_loop_beg_13_:
	sub	$2, $19, $16
# was:	sub	_tmp_reg_15_, _i_reg_12_, _size_reg_7_
	bgez	$2, _loop_end_14_
# was:	bgez	_tmp_reg_15_, _loop_end_14_
	lb	$2, 0($20)
# was:	lb	_res_reg_10_, 0(_elem_reg_9_)
	addi	$20, $20, 1
# was:	addi	_elem_reg_9_, _elem_reg_9_, 1
# 	ori	$2,_res_reg_10_,0
	jal	writeBool
# was:	jal	writeBool, $2
# 	ori	_tmp_reg_16_,$2,0
# 	ori	_res_reg_10_,_tmp_reg_16_,0
	sb	$2, 0($18)
# was:	sb	_res_reg_10_, 0(_addr_reg_11_)
	addi	$18, $18, 1
# was:	addi	_addr_reg_11_, _addr_reg_11_, 1
	addi	$19, $19, 1
# was:	addi	_i_reg_12_, _i_reg_12_, 1
	j	_loop_beg_13_
_loop_end_14_:
	ori	$2, $17, 0
# was:	ori	$2, _writeBoolArrayres_6_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function isBoolTrue
isBoolTrue:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_x_18_,$2,0
	ori	$3, $2, 0
# was:	ori	_eq_L_20_, _param_x_18_, 0
	ori	$2, $0, 1
# was:	ori	_eq_R_21_, $0, 1
	ori	$4, $0, 0
# was:	ori	_isBoolTrueres_19_, $0, 0
	bne	$3, $2, _false_22_
# was:	bne	_eq_L_20_, _eq_R_21_, _false_22_
	ori	$4, $0, 1
# was:	ori	_isBoolTrueres_19_, $0, 1
_false_22_:
	ori	$2, $4, 0
# was:	ori	$2, _isBoolTrueres_19_, 0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$23, -36($29)
	sw	$22, -32($29)
	sw	$21, -28($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -40
	ori	$3, $0, 3
# was:	ori	_size_reg_25_, $0, 3
	ori	$2, $28, 0
# was:	ori	_letBind_24_, $28, 0
	addi	$4, $3, 3
# was:	addi	_tmp_28_, _size_reg_25_, 3
	sra	$4, $4, 2
# was:	sra	_tmp_28_, _tmp_28_, 2
	sll	$4, $4, 2
# was:	sll	_tmp_28_, _tmp_28_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_28_, _tmp_28_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_28_
	sw	$3, 0($2)
# was:	sw	_size_reg_25_, 0(_letBind_24_)
	addi	$3, $2, 4
# was:	addi	_addr_reg_26_, _letBind_24_, 4
	ori	$6, $0, 2
# was:	ori	_eq_L_29_, $0, 2
	ori	$5, $0, 2
# was:	ori	_eq_R_30_, $0, 2
	ori	$4, $0, 0
# was:	ori	_tmp_reg_27_, $0, 0
	bne	$6, $5, _false_31_
# was:	bne	_eq_L_29_, _eq_R_30_, _false_31_
	ori	$4, $0, 1
# was:	ori	_tmp_reg_27_, $0, 1
_false_31_:
	sb	$4, 0($3)
# was:	sb	_tmp_reg_27_, 0(_addr_reg_26_)
	addi	$3, $3, 1
# was:	addi	_addr_reg_26_, _addr_reg_26_, 1
	ori	$6, $0, 2
# was:	ori	_eq_L_32_, $0, 2
	ori	$5, $0, 4
# was:	ori	_eq_R_33_, $0, 4
	ori	$4, $0, 0
# was:	ori	_tmp_reg_27_, $0, 0
	bne	$6, $5, _false_34_
# was:	bne	_eq_L_32_, _eq_R_33_, _false_34_
	ori	$4, $0, 1
# was:	ori	_tmp_reg_27_, $0, 1
_false_34_:
	sb	$4, 0($3)
# was:	sb	_tmp_reg_27_, 0(_addr_reg_26_)
	addi	$3, $3, 1
# was:	addi	_addr_reg_26_, _addr_reg_26_, 1
	ori	$5, $0, 16
# was:	ori	_divide_L_37_, $0, 16
	ori	$4, $0, 16
# was:	ori	_divide_R_38_, $0, 16
	beq	$4, $0, _divByZero_39_
# was:	beq	_divide_R_38_, $0, _divByZero_39_
	div	$6, $5, $4
# was:	div	_eq_L_35_, _divide_L_37_, _divide_R_38_
	j	_endLab_40_
_divByZero_39_:
	ori	$5, $0, 8
# was:	ori	$5, $0, 8
	la	$6, _Msg_DivZero_
# was:	la	$6, _Msg_DivZero_
	j	_RuntimeError_
_endLab_40_:
	ori	$5, $0, 1
# was:	ori	_eq_R_36_, $0, 1
	ori	$4, $0, 0
# was:	ori	_tmp_reg_27_, $0, 0
	bne	$6, $5, _false_41_
# was:	bne	_eq_L_35_, _eq_R_36_, _false_41_
	ori	$4, $0, 1
# was:	ori	_tmp_reg_27_, $0, 1
_false_41_:
	sb	$4, 0($3)
# was:	sb	_tmp_reg_27_, 0(_addr_reg_26_)
	addi	$3, $3, 1
# was:	addi	_addr_reg_26_, _addr_reg_26_, 1
# 	ori	_arr_reg_44_,_letBind_24_,0
	lw	$16, 0($2)
# was:	lw	_size_reg_43_, 0(_arr_reg_44_)
	ori	$17, $28, 0
# was:	ori	_letBind_42_, $28, 0
	addi	$3, $16, 3
# was:	addi	_tmp_57_, _size_reg_43_, 3
	sra	$3, $3, 2
# was:	sra	_tmp_57_, _tmp_57_, 2
	sll	$3, $3, 2
# was:	sll	_tmp_57_, _tmp_57_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_57_, _tmp_57_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_57_
	sw	$16, 0($17)
# was:	sw	_size_reg_43_, 0(_letBind_42_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_47_, _letBind_42_, 4
	addi	$20, $17, 0
# was:	addi	_arrh_reg_49_, _letBind_42_, 0
	ori	$21, $0, 0
# was:	ori	_i_reg_48_, $0, 0
	ori	$19, $0, 0
# was:	ori	_counter_reg_50_, $0, 0
	addi	$22, $2, 4
# was:	addi	_elem_reg_45_, _arr_reg_44_, 4
_loop_beg_52_:
	sub	$2, $21, $16
# was:	sub	_tmp_reg_55_, _i_reg_48_, _size_reg_43_
	bgez	$2, _loop_end_54_
# was:	bgez	_tmp_reg_55_, _loop_end_54_
	lb	$23, 0($22)
# was:	lb	_res_reg_46_, 0(_elem_reg_45_)
	addi	$22, $22, 1
# was:	addi	_elem_reg_45_, _elem_reg_45_, 1
	ori	$2, $23, 0
# was:	ori	$2, _res_reg_46_, 0
	jal	isBoolTrue
# was:	jal	isBoolTrue, $2
# 	ori	_tmp_reg_56_,$2,0
# 	ori	_tmp_reg_55_,_tmp_reg_56_,0
	beq	$2, $0, _check_wrong_53_
# was:	beq	_tmp_reg_55_, $0, _check_wrong_53_
	sb	$23, 0($18)
# was:	sb	_res_reg_46_, 0(_addr_reg_47_)
	addi	$18, $18, 1
# was:	addi	_addr_reg_47_, _addr_reg_47_, 1
	addi	$19, $19, 1
# was:	addi	_counter_reg_50_, _counter_reg_50_, 1
_check_wrong_53_:
	addi	$21, $21, 1
# was:	addi	_i_reg_48_, _i_reg_48_, 1
	j	_loop_beg_52_
_loop_end_54_:
	sw	$19, 0($20)
# was:	sw	_counter_reg_50_, 0(_arrh_reg_49_)
	ori	$2, $17, 0
# was:	ori	_arg_58_, _letBind_42_, 0
# 	ori	$2,_arg_58_,0
	jal	writeBoolArray
# was:	jal	writeBoolArray, $2
# 	ori	_mainres_23_,$2,0
# 	ori	$2,_mainres_23_,0
	addi	$29, $29, 40
	lw	$23, -36($29)
	lw	$22, -32($29)
	lw	$21, -28($29)
	lw	$20, -24($29)
	lw	$19, -20($29)
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