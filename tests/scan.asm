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
# Function main
main:
	sw	$31, -4($29)
	sw	$21, -28($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -32
	ori	$2, $0, 3
# was:	ori	_size_reg_3_, $0, 3
	ori	$6, $28, 0
# was:	ori	_letBind_2_, $28, 0
	sll	$3, $2, 2
# was:	sll	_tmp_6_, _size_reg_3_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_6_, _tmp_6_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_6_
	sw	$2, 0($6)
# was:	sw	_size_reg_3_, 0(_letBind_2_)
	addi	$3, $6, 4
# was:	addi	_addr_reg_4_, _letBind_2_, 4
	ori	$2, $0, 1
# was:	ori	_tmp_reg_5_, $0, 1
	sw	$2, 0($3)
# was:	sw	_tmp_reg_5_, 0(_addr_reg_4_)
	addi	$3, $3, 4
# was:	addi	_addr_reg_4_, _addr_reg_4_, 4
	ori	$2, $0, 2
# was:	ori	_tmp_reg_5_, $0, 2
	sw	$2, 0($3)
# was:	sw	_tmp_reg_5_, 0(_addr_reg_4_)
	addi	$3, $3, 4
# was:	addi	_addr_reg_4_, _addr_reg_4_, 4
	ori	$2, $0, 3
# was:	ori	_tmp_reg_5_, $0, 3
	sw	$2, 0($3)
# was:	sw	_tmp_reg_5_, 0(_addr_reg_4_)
	addi	$3, $3, 4
# was:	addi	_addr_reg_4_, _addr_reg_4_, 4
# 	ori	_arr_reg_8_,_letBind_2_,0
	ori	$8, $0, 0
# was:	ori	_acc_reg_13_, $0, 0
	lw	$3, 0($6)
# was:	lw	_size_reg_9_, 0(_arr_reg_8_)
	ori	$2, $28, 0
# was:	ori	_letBind_7_, $28, 0
	sll	$4, $3, 2
# was:	sll	_tmp_21_, _size_reg_9_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_21_, _tmp_21_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_21_
	sw	$3, 0($2)
# was:	sw	_size_reg_9_, 0(_letBind_7_)
	addi	$4, $2, 4
# was:	addi	_res_reg_11_, _letBind_7_, 4
	ori	$5, $0, 0
# was:	ori	_i_reg_14_, $0, 0
	addi	$6, $6, 4
# was:	addi	_elem_reg_10_, _arr_reg_8_, 4
_loop_beg_16_:
	sub	$7, $5, $3
# was:	sub	_tmp_reg_15_, _i_reg_14_, _size_reg_9_
	bgez	$7, _loop_end_17_
# was:	bgez	_tmp_reg_15_, _loop_end_17_
	lw	$7, 0($6)
# was:	lw	_tmp_reg_15_, 0(_elem_reg_10_)
	addi	$6, $6, 4
# was:	addi	_elem_reg_10_, _elem_reg_10_, 4
# 	ori	_plus_L_19_,_acc_reg_13_,0
# 	ori	_plus_R_20_,_tmp_reg_15_,0
	add	$8, $8, $7
# was:	add	_fun_arg_res_18_, _plus_L_19_, _plus_R_20_
# 	ori	_acc_reg_13_,_fun_arg_res_18_,0
	sw	$8, 0($4)
# was:	sw	_acc_reg_13_, 0(_res_reg_11_)
	addi	$4, $4, 4
# was:	addi	_res_reg_11_, _res_reg_11_, 4
	addi	$5, $5, 1
# was:	addi	_i_reg_14_, _i_reg_14_, 1
	j	_loop_beg_16_
_loop_end_17_:
# 	ori	_arr_reg_23_,_letBind_7_,0
	lw	$17, 0($2)
# was:	lw	_size_reg_22_, 0(_arr_reg_23_)
	ori	$16, $28, 0
# was:	ori	_mainres_1_, $28, 0
	sll	$3, $17, 2
# was:	sll	_tmp_33_, _size_reg_22_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_33_, _tmp_33_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_33_
	sw	$17, 0($16)
# was:	sw	_size_reg_22_, 0(_mainres_1_)
	addi	$18, $16, 4
# was:	addi	_addr_reg_26_, _mainres_1_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_27_, $0, 0
	addi	$20, $2, 4
# was:	addi	_elem_reg_24_, _arr_reg_23_, 4
_loop_beg_28_:
	sub	$2, $19, $17
# was:	sub	_tmp_reg_30_, _i_reg_27_, _size_reg_22_
	bgez	$2, _loop_end_29_
# was:	bgez	_tmp_reg_30_, _loop_end_29_
	lw	$21, 0($20)
# was:	lw	_res_reg_25_, 0(_elem_reg_24_)
	addi	$20, $20, 4
# was:	addi	_elem_reg_24_, _elem_reg_24_, 4
# 	ori	_tmp_32_,_res_reg_25_,0
# 	ori	_fun_arg_res_31_,_tmp_32_,0
	ori	$2, $21, 0
# was:	ori	$2, _fun_arg_res_31_, 0
	jal	putint
# was:	jal	putint, $2
# 	ori	_res_reg_25_,_fun_arg_res_31_,0
	sw	$21, 0($18)
# was:	sw	_res_reg_25_, 0(_addr_reg_26_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_26_, _addr_reg_26_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_27_, _i_reg_27_, 1
	j	_loop_beg_28_
_loop_end_29_:
	ori	$2, $16, 0
# was:	ori	$2, _mainres_1_, 0
	addi	$29, $29, 32
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