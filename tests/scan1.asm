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
# Function fAnd
fAnd:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_a_1_,$2,0
# 	ori	_param_b_2_,$3,0
# 	ori	_And_L_4_,_param_a_1_,0
	ori	$4, $0, 0
# was:	ori	_falseReg_6_, $0, 0
	ori	$5, $0, 0
# was:	ori	_fAndres_3_, $0, 0
	beq	$2, $4, _false_7_
# was:	beq	_And_L_4_, _falseReg_6_, _false_7_
# 	ori	_And_R_5_,_param_b_2_,0
	beq	$3, $4, _false_7_
# was:	beq	_And_R_5_, _falseReg_6_, _false_7_
	ori	$5, $0, 1
# was:	ori	_fAndres_3_, $0, 1
_false_7_:
	ori	$2, $5, 0
# was:	ori	$2, _fAndres_3_, 0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function writeBool
writeBool:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
# 	ori	_param_b_8_,$2,0
	ori	$16, $2, 0
# was:	ori	_tmp_10_, _param_b_8_, 0
# 	ori	_writeBoolres_9_,_tmp_10_,0
	la	$2, _true
# was:	la	$2, _true
	bne	$16, $0, _wBoolF_11_
# was:	bne	_writeBoolres_9_, $0, _wBoolF_11_
	la	$2, _false
# was:	la	$2, _false
_wBoolF_11_:
	jal	putstring
# was:	jal	putstring, $2
	ori	$2, $16, 0
# was:	ori	$2, _writeBoolres_9_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	ori	$4, $0, 3
# was:	ori	_size_reg_14_, $0, 3
	ori	$3, $28, 0
# was:	ori	_letBind_13_, $28, 0
	addi	$2, $4, 3
# was:	addi	_tmp_17_, _size_reg_14_, 3
	sra	$2, $2, 2
# was:	sra	_tmp_17_, _tmp_17_, 2
	sll	$2, $2, 2
# was:	sll	_tmp_17_, _tmp_17_, 2
	addi	$2, $2, 4
# was:	addi	_tmp_17_, _tmp_17_, 4
	add	$28, $28, $2
# was:	add	$28, $28, _tmp_17_
	sw	$4, 0($3)
# was:	sw	_size_reg_14_, 0(_letBind_13_)
	addi	$4, $3, 4
# was:	addi	_addr_reg_15_, _letBind_13_, 4
	ori	$2, $0, 1
# was:	ori	_tmp_reg_16_, $0, 1
	sb	$2, 0($4)
# was:	sb	_tmp_reg_16_, 0(_addr_reg_15_)
	addi	$4, $4, 1
# was:	addi	_addr_reg_15_, _addr_reg_15_, 1
	ori	$2, $0, 1
# was:	ori	_tmp_reg_16_, $0, 1
	sb	$2, 0($4)
# was:	sb	_tmp_reg_16_, 0(_addr_reg_15_)
	addi	$4, $4, 1
# was:	addi	_addr_reg_15_, _addr_reg_15_, 1
	ori	$2, $0, 0
# was:	ori	_tmp_reg_16_, $0, 0
	sb	$2, 0($4)
# was:	sb	_tmp_reg_16_, 0(_addr_reg_15_)
	addi	$4, $4, 1
# was:	addi	_addr_reg_15_, _addr_reg_15_, 1
# 	ori	_arr_reg_19_,_letBind_13_,0
	ori	$2, $0, 1
# was:	ori	_acc_reg_24_, $0, 1
	lw	$17, 0($3)
# was:	lw	_size_reg_20_, 0(_arr_reg_19_)
	ori	$16, $28, 0
# was:	ori	_letBind_18_, $28, 0
	addi	$4, $17, 3
# was:	addi	_tmp_30_, _size_reg_20_, 3
	sra	$4, $4, 2
# was:	sra	_tmp_30_, _tmp_30_, 2
	sll	$4, $4, 2
# was:	sll	_tmp_30_, _tmp_30_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_30_, _tmp_30_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_30_
	sw	$17, 0($16)
# was:	sw	_size_reg_20_, 0(_letBind_18_)
	addi	$19, $16, 4
# was:	addi	_res_reg_22_, _letBind_18_, 4
	ori	$18, $0, 0
# was:	ori	_i_reg_25_, $0, 0
	addi	$20, $3, 4
# was:	addi	_elem_reg_21_, _arr_reg_19_, 4
_loop_beg_27_:
	sub	$3, $18, $17
# was:	sub	_tmp_reg_26_, _i_reg_25_, _size_reg_20_
	bgez	$3, _loop_end_28_
# was:	bgez	_tmp_reg_26_, _loop_end_28_
	lb	$3, 0($20)
# was:	lb	_tmp_reg_26_, 0(_elem_reg_21_)
	addi	$20, $20, 1
# was:	addi	_elem_reg_21_, _elem_reg_21_, 1
# 	ori	$2,_acc_reg_24_,0
# 	ori	$3,_tmp_reg_26_,0
	jal	fAnd
# was:	jal	fAnd, $2 $3
# 	ori	_tmp_reg_29_,$2,0
# 	ori	_acc_reg_24_,_tmp_reg_29_,0
	sb	$2, 0($19)
# was:	sb	_acc_reg_24_, 0(_res_reg_22_)
	addi	$19, $19, 1
# was:	addi	_res_reg_22_, _res_reg_22_, 1
	addi	$18, $18, 1
# was:	addi	_i_reg_25_, _i_reg_25_, 1
	j	_loop_beg_27_
_loop_end_28_:
	ori	$2, $16, 0
# was:	ori	_arr_reg_32_, _letBind_18_, 0
	lw	$16, 0($2)
# was:	lw	_size_reg_31_, 0(_arr_reg_32_)
	ori	$17, $28, 0
# was:	ori	_mainres_12_, $28, 0
	addi	$3, $16, 3
# was:	addi	_tmp_41_, _size_reg_31_, 3
	sra	$3, $3, 2
# was:	sra	_tmp_41_, _tmp_41_, 2
	sll	$3, $3, 2
# was:	sll	_tmp_41_, _tmp_41_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_41_, _tmp_41_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_41_
	sw	$16, 0($17)
# was:	sw	_size_reg_31_, 0(_mainres_12_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_35_, _mainres_12_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_36_, $0, 0
	addi	$20, $2, 4
# was:	addi	_elem_reg_33_, _arr_reg_32_, 4
_loop_beg_37_:
	sub	$2, $19, $16
# was:	sub	_tmp_reg_39_, _i_reg_36_, _size_reg_31_
	bgez	$2, _loop_end_38_
# was:	bgez	_tmp_reg_39_, _loop_end_38_
	lb	$2, 0($20)
# was:	lb	_res_reg_34_, 0(_elem_reg_33_)
	addi	$20, $20, 1
# was:	addi	_elem_reg_33_, _elem_reg_33_, 1
# 	ori	$2,_res_reg_34_,0
	jal	writeBool
# was:	jal	writeBool, $2
# 	ori	_tmp_reg_40_,$2,0
# 	ori	_res_reg_34_,_tmp_reg_40_,0
	sb	$2, 0($18)
# was:	sb	_res_reg_34_, 0(_addr_reg_35_)
	addi	$18, $18, 1
# was:	addi	_addr_reg_35_, _addr_reg_35_, 1
	addi	$19, $19, 1
# was:	addi	_i_reg_36_, _i_reg_36_, 1
	j	_loop_beg_37_
_loop_end_38_:
	ori	$2, $17, 0
# was:	ori	$2, _mainres_12_, 0
	addi	$29, $29, 28
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