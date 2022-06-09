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
# Function writeChar
writeChar:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
# 	ori	_param_x_1_,$2,0
	ori	$16, $2, 0
# was:	ori	_tmp_3_, _param_x_1_, 0
# 	ori	_writeCharres_2_,_tmp_3_,0
	ori	$2, $16, 0
# was:	ori	$2, _writeCharres_2_, 0
	jal	putchar
# was:	jal	putchar, $2
	ori	$2, $16, 0
# was:	ori	$2, _writeCharres_2_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function writeCharArray
writeCharArray:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
# 	ori	_param_x_4_,$2,0
# 	ori	_arr_reg_7_,_param_x_4_,0
	lw	$16, 0($2)
# was:	lw	_size_reg_6_, 0(_arr_reg_7_)
	ori	$17, $28, 0
# was:	ori	_writeCharArrayres_5_, $28, 0
	addi	$3, $16, 3
# was:	addi	_tmp_16_, _size_reg_6_, 3
	sra	$3, $3, 2
# was:	sra	_tmp_16_, _tmp_16_, 2
	sll	$3, $3, 2
# was:	sll	_tmp_16_, _tmp_16_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_16_, _tmp_16_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_16_
	sw	$16, 0($17)
# was:	sw	_size_reg_6_, 0(_writeCharArrayres_5_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_10_, _writeCharArrayres_5_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_11_, $0, 0
	addi	$20, $2, 4
# was:	addi	_elem_reg_8_, _arr_reg_7_, 4
_loop_beg_12_:
	sub	$2, $19, $16
# was:	sub	_tmp_reg_14_, _i_reg_11_, _size_reg_6_
	bgez	$2, _loop_end_13_
# was:	bgez	_tmp_reg_14_, _loop_end_13_
	lb	$2, 0($20)
# was:	lb	_res_reg_9_, 0(_elem_reg_8_)
	addi	$20, $20, 1
# was:	addi	_elem_reg_8_, _elem_reg_8_, 1
# 	ori	$2,_res_reg_9_,0
	jal	writeChar
# was:	jal	writeChar, $2
# 	ori	_tmp_reg_15_,$2,0
# 	ori	_res_reg_9_,_tmp_reg_15_,0
	sb	$2, 0($18)
# was:	sb	_res_reg_9_, 0(_addr_reg_10_)
	addi	$18, $18, 1
# was:	addi	_addr_reg_10_, _addr_reg_10_, 1
	addi	$19, $19, 1
# was:	addi	_i_reg_11_, _i_reg_11_, 1
	j	_loop_beg_12_
_loop_end_13_:
	ori	$2, $17, 0
# was:	ori	$2, _writeCharArrayres_5_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function isCharA
isCharA:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_x_17_,$2,0
	ori	$3, $2, 0
# was:	ori	_eq_L_19_, _param_x_17_, 0
	ori	$2, $0, 97
# was:	ori	_eq_R_20_, $0, 97
	ori	$4, $0, 0
# was:	ori	_isCharAres_18_, $0, 0
	bne	$3, $2, _false_21_
# was:	bne	_eq_L_19_, _eq_R_20_, _false_21_
	ori	$4, $0, 1
# was:	ori	_isCharAres_18_, $0, 1
_false_21_:
	ori	$2, $4, 0
# was:	ori	$2, _isCharAres_18_, 0
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
	ori	$4, $0, 3
# was:	ori	_size_reg_24_, $0, 3
	ori	$2, $28, 0
# was:	ori	_letBind_23_, $28, 0
	addi	$3, $4, 3
# was:	addi	_tmp_27_, _size_reg_24_, 3
	sra	$3, $3, 2
# was:	sra	_tmp_27_, _tmp_27_, 2
	sll	$3, $3, 2
# was:	sll	_tmp_27_, _tmp_27_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_27_, _tmp_27_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_27_
	sw	$4, 0($2)
# was:	sw	_size_reg_24_, 0(_letBind_23_)
	addi	$3, $2, 4
# was:	addi	_addr_reg_25_, _letBind_23_, 4
	ori	$4, $0, 97
# was:	ori	_tmp_reg_26_, $0, 97
	sb	$4, 0($3)
# was:	sb	_tmp_reg_26_, 0(_addr_reg_25_)
	addi	$3, $3, 1
# was:	addi	_addr_reg_25_, _addr_reg_25_, 1
	ori	$4, $0, 98
# was:	ori	_tmp_reg_26_, $0, 98
	sb	$4, 0($3)
# was:	sb	_tmp_reg_26_, 0(_addr_reg_25_)
	addi	$3, $3, 1
# was:	addi	_addr_reg_25_, _addr_reg_25_, 1
	ori	$4, $0, 99
# was:	ori	_tmp_reg_26_, $0, 99
	sb	$4, 0($3)
# was:	sb	_tmp_reg_26_, 0(_addr_reg_25_)
	addi	$3, $3, 1
# was:	addi	_addr_reg_25_, _addr_reg_25_, 1
# 	ori	_arr_reg_30_,_letBind_23_,0
	lw	$16, 0($2)
# was:	lw	_size_reg_29_, 0(_arr_reg_30_)
	ori	$17, $28, 0
# was:	ori	_letBind_28_, $28, 0
	addi	$3, $16, 3
# was:	addi	_tmp_43_, _size_reg_29_, 3
	sra	$3, $3, 2
# was:	sra	_tmp_43_, _tmp_43_, 2
	sll	$3, $3, 2
# was:	sll	_tmp_43_, _tmp_43_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_43_, _tmp_43_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_43_
	sw	$16, 0($17)
# was:	sw	_size_reg_29_, 0(_letBind_28_)
	addi	$19, $17, 4
# was:	addi	_addr_reg_33_, _letBind_28_, 4
	addi	$21, $17, 0
# was:	addi	_arrh_reg_35_, _letBind_28_, 0
	ori	$18, $0, 0
# was:	ori	_i_reg_34_, $0, 0
	ori	$20, $0, 0
# was:	ori	_counter_reg_36_, $0, 0
	addi	$22, $2, 4
# was:	addi	_elem_reg_31_, _arr_reg_30_, 4
_loop_beg_38_:
	sub	$2, $18, $16
# was:	sub	_tmp_reg_41_, _i_reg_34_, _size_reg_29_
	bgez	$2, _loop_end_40_
# was:	bgez	_tmp_reg_41_, _loop_end_40_
	lb	$23, 0($22)
# was:	lb	_res_reg_32_, 0(_elem_reg_31_)
	addi	$22, $22, 1
# was:	addi	_elem_reg_31_, _elem_reg_31_, 1
	ori	$2, $23, 0
# was:	ori	$2, _res_reg_32_, 0
	jal	isCharA
# was:	jal	isCharA, $2
# 	ori	_tmp_reg_42_,$2,0
# 	ori	_tmp_reg_41_,_tmp_reg_42_,0
	beq	$2, $0, _check_wrong_39_
# was:	beq	_tmp_reg_41_, $0, _check_wrong_39_
	sb	$23, 0($19)
# was:	sb	_res_reg_32_, 0(_addr_reg_33_)
	addi	$19, $19, 1
# was:	addi	_addr_reg_33_, _addr_reg_33_, 1
	addi	$20, $20, 1
# was:	addi	_counter_reg_36_, _counter_reg_36_, 1
_check_wrong_39_:
	addi	$18, $18, 1
# was:	addi	_i_reg_34_, _i_reg_34_, 1
	j	_loop_beg_38_
_loop_end_40_:
	sw	$20, 0($21)
# was:	sw	_counter_reg_36_, 0(_arrh_reg_35_)
	ori	$2, $17, 0
# was:	ori	_arg_44_, _letBind_28_, 0
# 	ori	$2,_arg_44_,0
	jal	writeCharArray
# was:	jal	writeCharArray, $2
# 	ori	_mainres_22_,$2,0
# 	ori	$2,_mainres_22_,0
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