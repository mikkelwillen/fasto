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
	jal	getint
# was:	jal	getint, $2
	ori	$5, $2, 0
# was:	ori	_letBind_2_, $2, 0
# 	ori	_size_reg_4_,_letBind_2_,0
	bgez	$5, _safe_lab_5_
# was:	bgez	_size_reg_4_, _safe_lab_5_
	ori	$5, $0, 15
# was:	ori	$5, $0, 15
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_5_:
	ori	$2, $28, 0
# was:	ori	_letBind_3_, $28, 0
	sll	$3, $5, 2
# was:	sll	_tmp_11_, _size_reg_4_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_11_, _tmp_11_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_11_
	sw	$5, 0($2)
# was:	sw	_size_reg_4_, 0(_letBind_3_)
	addi	$4, $2, 4
# was:	addi	_addr_reg_6_, _letBind_3_, 4
	ori	$2, $0, 0
# was:	ori	_i_reg_7_, $0, 0
_loop_beg_8_:
	sub	$3, $2, $5
# was:	sub	_tmp_reg_10_, _i_reg_7_, _size_reg_4_
	bgez	$3, _loop_end_9_
# was:	bgez	_tmp_reg_10_, _loop_end_9_
	sw	$2, 0($4)
# was:	sw	_i_reg_7_, 0(_addr_reg_6_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_6_, _addr_reg_6_, 4
	addi	$2, $2, 1
# was:	addi	_i_reg_7_, _i_reg_7_, 1
	j	_loop_beg_8_
_loop_end_9_:
	ori	$2, $5, 0
# was:	ori	_plus_L_13_, _letBind_2_, 0
# 	ori	_plus_R_14_,_letBind_2_,0
	add	$2, $2, $5
# was:	add	_letBind_12_, _plus_L_13_, _plus_R_14_
# 	ori	_plus_L_18_,_letBind_2_,0
	ori	$3, $5, 0
# was:	ori	_plus_R_19_, _letBind_2_, 0
	add	$3, $5, $3
# was:	add	_plus_L_16_, _plus_L_18_, _plus_R_19_
# 	ori	_plus_R_17_,_letBind_2_,0
	add	$0, $3, $5
# was:	add	_letBind_15_, _plus_L_16_, _plus_R_17_
# 	ori	_arr_reg_22_,_letBind_12_,0
	lw	$5, 0($2)
# was:	lw	_size_reg_21_, 0(_arr_reg_22_)
	ori	$4, $28, 0
# was:	ori	_letBind_20_, $28, 0
	sll	$3, $5, 2
# was:	sll	_tmp_33_, _size_reg_21_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_33_, _tmp_33_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_33_
	sw	$5, 0($4)
# was:	sw	_size_reg_21_, 0(_letBind_20_)
	addi	$3, $4, 4
# was:	addi	_addr_reg_25_, _letBind_20_, 4
	ori	$6, $0, 0
# was:	ori	_i_reg_26_, $0, 0
	addi	$7, $2, 4
# was:	addi	_elem_reg_23_, _arr_reg_22_, 4
_loop_beg_27_:
	sub	$2, $6, $5
# was:	sub	_tmp_reg_29_, _i_reg_26_, _size_reg_21_
	bgez	$2, _loop_end_28_
# was:	bgez	_tmp_reg_29_, _loop_end_28_
	lw	$2, 0($7)
# was:	lw	_res_reg_24_, 0(_elem_reg_23_)
	addi	$7, $7, 4
# was:	addi	_elem_reg_23_, _elem_reg_23_, 4
# 	ori	_plus_L_31_,_res_reg_24_,0
	ori	$8, $0, 5
# was:	ori	_plus_R_32_, $0, 5
	add	$2, $2, $8
# was:	add	_fun_arg_res_30_, _plus_L_31_, _plus_R_32_
# 	ori	_res_reg_24_,_fun_arg_res_30_,0
	sw	$2, 0($3)
# was:	sw	_res_reg_24_, 0(_addr_reg_25_)
	addi	$3, $3, 4
# was:	addi	_addr_reg_25_, _addr_reg_25_, 4
	addi	$6, $6, 1
# was:	addi	_i_reg_26_, _i_reg_26_, 1
	j	_loop_beg_27_
_loop_end_28_:
	ori	$2, $4, 0
# was:	ori	_arr_reg_36_, _letBind_20_, 0
	lw	$5, 0($2)
# was:	lw	_size_reg_35_, 0(_arr_reg_36_)
	ori	$4, $28, 0
# was:	ori	_letBind_34_, $28, 0
	sll	$3, $5, 2
# was:	sll	_tmp_47_, _size_reg_35_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_47_, _tmp_47_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_47_
	sw	$5, 0($4)
# was:	sw	_size_reg_35_, 0(_letBind_34_)
	addi	$3, $4, 4
# was:	addi	_addr_reg_39_, _letBind_34_, 4
	ori	$6, $0, 0
# was:	ori	_i_reg_40_, $0, 0
	addi	$7, $2, 4
# was:	addi	_elem_reg_37_, _arr_reg_36_, 4
_loop_beg_41_:
	sub	$2, $6, $5
# was:	sub	_tmp_reg_43_, _i_reg_40_, _size_reg_35_
	bgez	$2, _loop_end_42_
# was:	bgez	_tmp_reg_43_, _loop_end_42_
	lw	$2, 0($7)
# was:	lw	_res_reg_38_, 0(_elem_reg_37_)
	addi	$7, $7, 4
# was:	addi	_elem_reg_37_, _elem_reg_37_, 4
# 	ori	_plus_L_45_,_res_reg_38_,0
	ori	$8, $2, 0
# was:	ori	_plus_R_46_, _res_reg_38_, 0
	add	$2, $2, $8
# was:	add	_fun_arg_res_44_, _plus_L_45_, _plus_R_46_
# 	ori	_res_reg_38_,_fun_arg_res_44_,0
	sw	$2, 0($3)
# was:	sw	_res_reg_38_, 0(_addr_reg_39_)
	addi	$3, $3, 4
# was:	addi	_addr_reg_39_, _addr_reg_39_, 4
	addi	$6, $6, 1
# was:	addi	_i_reg_40_, _i_reg_40_, 1
	j	_loop_beg_41_
_loop_end_42_:
# 	ori	_arr_reg_49_,_letBind_34_,0
	lw	$17, 0($4)
# was:	lw	_size_reg_48_, 0(_arr_reg_49_)
	ori	$16, $28, 0
# was:	ori	_mainres_1_, $28, 0
	sll	$2, $17, 2
# was:	sll	_tmp_59_, _size_reg_48_, 2
	addi	$2, $2, 4
# was:	addi	_tmp_59_, _tmp_59_, 4
	add	$28, $28, $2
# was:	add	$28, $28, _tmp_59_
	sw	$17, 0($16)
# was:	sw	_size_reg_48_, 0(_mainres_1_)
	addi	$18, $16, 4
# was:	addi	_addr_reg_52_, _mainres_1_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_53_, $0, 0
	addi	$20, $4, 4
# was:	addi	_elem_reg_50_, _arr_reg_49_, 4
_loop_beg_54_:
	sub	$2, $19, $17
# was:	sub	_tmp_reg_56_, _i_reg_53_, _size_reg_48_
	bgez	$2, _loop_end_55_
# was:	bgez	_tmp_reg_56_, _loop_end_55_
	lw	$21, 0($20)
# was:	lw	_res_reg_51_, 0(_elem_reg_50_)
	addi	$20, $20, 4
# was:	addi	_elem_reg_50_, _elem_reg_50_, 4
# 	ori	_tmp_58_,_res_reg_51_,0
# 	ori	_fun_arg_res_57_,_tmp_58_,0
	ori	$2, $21, 0
# was:	ori	$2, _fun_arg_res_57_, 0
	jal	putint
# was:	jal	putint, $2
# 	ori	_res_reg_51_,_fun_arg_res_57_,0
	sw	$21, 0($18)
# was:	sw	_res_reg_51_, 0(_addr_reg_52_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_52_, _addr_reg_52_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_53_, _i_reg_53_, 1
	j	_loop_beg_54_
_loop_end_55_:
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