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
# Function fCheck
fCheck:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_a_1_,$2,0
	ori	$4, $3, 0
# was:	ori	_param_b_2_, $3, 0
# 	ori	_eq_L_8_,_param_a_1_,0
# 	ori	_eq_R_9_,_param_b_2_,0
	ori	$3, $0, 0
# was:	ori	_cond_7_, $0, 0
	bne	$2, $4, _false_10_
# was:	bne	_eq_L_8_, _eq_R_9_, _false_10_
	ori	$3, $0, 1
# was:	ori	_cond_7_, $0, 1
_false_10_:
	bne	$3, $0, _then_4_
# was:	bne	_cond_7_, $0, _then_4_
	j	_else_5_
_then_4_:
# 	ori	_fCheckres_3_,_param_a_1_,0
	j	_endif_6_
_else_5_:
	ori	$2, $4, 0
# was:	ori	_fCheckres_3_, _param_b_2_, 0
_endif_6_:
# 	ori	$2,_fCheckres_3_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function writeChar
writeChar:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
# 	ori	_param_c_11_,$2,0
	ori	$16, $2, 0
# was:	ori	_tmp_13_, _param_c_11_, 0
# 	ori	_writeCharres_12_,_tmp_13_,0
	ori	$2, $16, 0
# was:	ori	$2, _writeCharres_12_, 0
	jal	putchar
# was:	jal	putchar, $2
	ori	$2, $16, 0
# was:	ori	$2, _writeCharres_12_, 0
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
# was:	ori	_size_reg_16_, $0, 3
	ori	$3, $28, 0
# was:	ori	_letBind_15_, $28, 0
	addi	$2, $4, 3
# was:	addi	_tmp_19_, _size_reg_16_, 3
	sra	$2, $2, 2
# was:	sra	_tmp_19_, _tmp_19_, 2
	sll	$2, $2, 2
# was:	sll	_tmp_19_, _tmp_19_, 2
	addi	$2, $2, 4
# was:	addi	_tmp_19_, _tmp_19_, 4
	add	$28, $28, $2
# was:	add	$28, $28, _tmp_19_
	sw	$4, 0($3)
# was:	sw	_size_reg_16_, 0(_letBind_15_)
	addi	$4, $3, 4
# was:	addi	_addr_reg_17_, _letBind_15_, 4
	ori	$2, $0, 97
# was:	ori	_tmp_reg_18_, $0, 97
	sb	$2, 0($4)
# was:	sb	_tmp_reg_18_, 0(_addr_reg_17_)
	addi	$4, $4, 1
# was:	addi	_addr_reg_17_, _addr_reg_17_, 1
	ori	$2, $0, 97
# was:	ori	_tmp_reg_18_, $0, 97
	sb	$2, 0($4)
# was:	sb	_tmp_reg_18_, 0(_addr_reg_17_)
	addi	$4, $4, 1
# was:	addi	_addr_reg_17_, _addr_reg_17_, 1
	ori	$2, $0, 98
# was:	ori	_tmp_reg_18_, $0, 98
	sb	$2, 0($4)
# was:	sb	_tmp_reg_18_, 0(_addr_reg_17_)
	addi	$4, $4, 1
# was:	addi	_addr_reg_17_, _addr_reg_17_, 1
# 	ori	_arr_reg_21_,_letBind_15_,0
	ori	$2, $0, 97
# was:	ori	_acc_reg_26_, $0, 97
	lw	$17, 0($3)
# was:	lw	_size_reg_22_, 0(_arr_reg_21_)
	ori	$16, $28, 0
# was:	ori	_letBind_20_, $28, 0
	addi	$4, $17, 3
# was:	addi	_tmp_32_, _size_reg_22_, 3
	sra	$4, $4, 2
# was:	sra	_tmp_32_, _tmp_32_, 2
	sll	$4, $4, 2
# was:	sll	_tmp_32_, _tmp_32_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_32_, _tmp_32_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_32_
	sw	$17, 0($16)
# was:	sw	_size_reg_22_, 0(_letBind_20_)
	addi	$19, $16, 4
# was:	addi	_res_reg_24_, _letBind_20_, 4
	ori	$18, $0, 0
# was:	ori	_i_reg_27_, $0, 0
	addi	$20, $3, 4
# was:	addi	_elem_reg_23_, _arr_reg_21_, 4
_loop_beg_29_:
	sub	$3, $18, $17
# was:	sub	_tmp_reg_28_, _i_reg_27_, _size_reg_22_
	bgez	$3, _loop_end_30_
# was:	bgez	_tmp_reg_28_, _loop_end_30_
	lb	$3, 0($20)
# was:	lb	_tmp_reg_28_, 0(_elem_reg_23_)
	addi	$20, $20, 1
# was:	addi	_elem_reg_23_, _elem_reg_23_, 1
# 	ori	$2,_acc_reg_26_,0
# 	ori	$3,_tmp_reg_28_,0
	jal	fCheck
# was:	jal	fCheck, $2 $3
# 	ori	_tmp_reg_31_,$2,0
# 	ori	_acc_reg_26_,_tmp_reg_31_,0
	sb	$2, 0($19)
# was:	sb	_acc_reg_26_, 0(_res_reg_24_)
	addi	$19, $19, 1
# was:	addi	_res_reg_24_, _res_reg_24_, 1
	addi	$18, $18, 1
# was:	addi	_i_reg_27_, _i_reg_27_, 1
	j	_loop_beg_29_
_loop_end_30_:
	ori	$2, $16, 0
# was:	ori	_arr_reg_34_, _letBind_20_, 0
	lw	$16, 0($2)
# was:	lw	_size_reg_33_, 0(_arr_reg_34_)
	ori	$17, $28, 0
# was:	ori	_mainres_14_, $28, 0
	addi	$3, $16, 3
# was:	addi	_tmp_43_, _size_reg_33_, 3
	sra	$3, $3, 2
# was:	sra	_tmp_43_, _tmp_43_, 2
	sll	$3, $3, 2
# was:	sll	_tmp_43_, _tmp_43_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_43_, _tmp_43_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_43_
	sw	$16, 0($17)
# was:	sw	_size_reg_33_, 0(_mainres_14_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_37_, _mainres_14_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_38_, $0, 0
	addi	$20, $2, 4
# was:	addi	_elem_reg_35_, _arr_reg_34_, 4
_loop_beg_39_:
	sub	$2, $19, $16
# was:	sub	_tmp_reg_41_, _i_reg_38_, _size_reg_33_
	bgez	$2, _loop_end_40_
# was:	bgez	_tmp_reg_41_, _loop_end_40_
	lb	$2, 0($20)
# was:	lb	_res_reg_36_, 0(_elem_reg_35_)
	addi	$20, $20, 1
# was:	addi	_elem_reg_35_, _elem_reg_35_, 1
# 	ori	$2,_res_reg_36_,0
	jal	writeChar
# was:	jal	writeChar, $2
# 	ori	_tmp_reg_42_,$2,0
# 	ori	_res_reg_36_,_tmp_reg_42_,0
	sb	$2, 0($18)
# was:	sb	_res_reg_36_, 0(_addr_reg_37_)
	addi	$18, $18, 1
# was:	addi	_addr_reg_37_, _addr_reg_37_, 1
	addi	$19, $19, 1
# was:	addi	_i_reg_38_, _i_reg_38_, 1
	j	_loop_beg_39_
_loop_end_40_:
	ori	$2, $17, 0
# was:	ori	$2, _mainres_14_, 0
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