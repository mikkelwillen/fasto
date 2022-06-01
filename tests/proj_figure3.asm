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
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	jal	getint
# was:	jal	getint, $2
# 	ori	_letBind_2_,$2,0
	ori	$4, $2, 0
# was:	ori	_size_reg_4_, _letBind_2_, 0
	bgez	$4, _safe_lab_5_
# was:	bgez	_size_reg_4_, _safe_lab_5_
	ori	$5, $0, 6
# was:	ori	$5, $0, 6
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_5_:
	ori	$7, $28, 0
# was:	ori	_letBind_3_, $28, 0
	sll	$2, $4, 2
# was:	sll	_tmp_11_, _size_reg_4_, 2
	addi	$2, $2, 4
# was:	addi	_tmp_11_, _tmp_11_, 4
	add	$28, $28, $2
# was:	add	$28, $28, _tmp_11_
	sw	$4, 0($7)
# was:	sw	_size_reg_4_, 0(_letBind_3_)
	addi	$3, $7, 4
# was:	addi	_addr_reg_6_, _letBind_3_, 4
	ori	$5, $0, 0
# was:	ori	_i_reg_7_, $0, 0
_loop_beg_8_:
	sub	$2, $5, $4
# was:	sub	_tmp_reg_10_, _i_reg_7_, _size_reg_4_
	bgez	$2, _loop_end_9_
# was:	bgez	_tmp_reg_10_, _loop_end_9_
	sw	$5, 0($3)
# was:	sw	_i_reg_7_, 0(_addr_reg_6_)
	addi	$3, $3, 4
# was:	addi	_addr_reg_6_, _addr_reg_6_, 4
	addi	$5, $5, 1
# was:	addi	_i_reg_7_, _i_reg_7_, 1
	j	_loop_beg_8_
_loop_end_9_:
# 	ori	_arr_reg_14_,_letBind_3_,0
	lw	$3, 0($7)
# was:	lw	_size_reg_13_, 0(_arr_reg_14_)
	ori	$2, $28, 0
# was:	ori	_letBind_12_, $28, 0
	sll	$4, $3, 2
# was:	sll	_tmp_25_, _size_reg_13_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_25_, _tmp_25_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_25_
	sw	$3, 0($2)
# was:	sw	_size_reg_13_, 0(_letBind_12_)
	addi	$5, $2, 4
# was:	addi	_addr_reg_17_, _letBind_12_, 4
	ori	$4, $0, 0
# was:	ori	_i_reg_18_, $0, 0
	addi	$6, $7, 4
# was:	addi	_elem_reg_15_, _arr_reg_14_, 4
_loop_beg_19_:
	sub	$8, $4, $3
# was:	sub	_tmp_reg_21_, _i_reg_18_, _size_reg_13_
	bgez	$8, _loop_end_20_
# was:	bgez	_tmp_reg_21_, _loop_end_20_
	lw	$8, 0($6)
# was:	lw	_res_reg_16_, 0(_elem_reg_15_)
	addi	$6, $6, 4
# was:	addi	_elem_reg_15_, _elem_reg_15_, 4
# 	ori	_plus_L_23_,_res_reg_16_,0
	ori	$9, $0, 100
# was:	ori	_plus_R_24_, $0, 100
	add	$8, $8, $9
# was:	add	_fun_arg_res_22_, _plus_L_23_, _plus_R_24_
# 	ori	_res_reg_16_,_fun_arg_res_22_,0
	sw	$8, 0($5)
# was:	sw	_res_reg_16_, 0(_addr_reg_17_)
	addi	$5, $5, 4
# was:	addi	_addr_reg_17_, _addr_reg_17_, 4
	addi	$4, $4, 1
# was:	addi	_i_reg_18_, _i_reg_18_, 1
	j	_loop_beg_19_
_loop_end_20_:
# 	ori	_arr_reg_27_,_letBind_3_,0
	lw	$4, 0($7)
# was:	lw	_size_reg_28_, 0(_arr_reg_27_)
	ori	$3, $0, 0
# was:	ori	_letBind_26_, $0, 0
	addi	$7, $7, 4
# was:	addi	_arr_reg_27_, _arr_reg_27_, 4
	ori	$5, $0, 0
# was:	ori	_ind_var_29_, $0, 0
_loop_beg_31_:
	sub	$6, $5, $4
# was:	sub	_tmp_reg_30_, _ind_var_29_, _size_reg_28_
	bgez	$6, _loop_end_32_
# was:	bgez	_tmp_reg_30_, _loop_end_32_
	lw	$6, 0($7)
# was:	lw	_tmp_reg_30_, 0(_arr_reg_27_)
	addi	$7, $7, 4
# was:	addi	_arr_reg_27_, _arr_reg_27_, 4
# 	ori	_plus_L_34_,_letBind_26_,0
# 	ori	_plus_R_35_,_tmp_reg_30_,0
	add	$3, $3, $6
# was:	add	_fun_arg_res_33_, _plus_L_34_, _plus_R_35_
# 	ori	_letBind_26_,_fun_arg_res_33_,0
	addi	$5, $5, 1
# was:	addi	_ind_var_29_, _ind_var_29_, 1
	j	_loop_beg_31_
_loop_end_32_:
# 	ori	_arr_reg_38_,_letBind_12_,0
	lw	$17, 0($2)
# was:	lw	_size_reg_37_, 0(_arr_reg_38_)
	ori	$16, $28, 0
# was:	ori	_letBind_36_, $28, 0
	addi	$3, $17, 3
# was:	addi	_tmp_47_, _size_reg_37_, 3
	sra	$3, $3, 2
# was:	sra	_tmp_47_, _tmp_47_, 2
	sll	$3, $3, 2
# was:	sll	_tmp_47_, _tmp_47_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_47_, _tmp_47_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_47_
	sw	$17, 0($16)
# was:	sw	_size_reg_37_, 0(_letBind_36_)
	addi	$19, $16, 4
# was:	addi	_addr_reg_41_, _letBind_36_, 4
	ori	$18, $0, 0
# was:	ori	_i_reg_42_, $0, 0
	addi	$20, $2, 4
# was:	addi	_elem_reg_39_, _arr_reg_38_, 4
_loop_beg_43_:
	sub	$2, $18, $17
# was:	sub	_tmp_reg_45_, _i_reg_42_, _size_reg_37_
	bgez	$2, _loop_end_44_
# was:	bgez	_tmp_reg_45_, _loop_end_44_
	lw	$2, 0($20)
# was:	lw	_res_reg_40_, 0(_elem_reg_39_)
	addi	$20, $20, 4
# was:	addi	_elem_reg_39_, _elem_reg_39_, 4
# 	ori	$2,_res_reg_40_,0
	jal	chr
# was:	jal	chr, $2
# 	ori	_tmp_reg_46_,$2,0
# 	ori	_res_reg_40_,_tmp_reg_46_,0
	sb	$2, 0($19)
# was:	sb	_res_reg_40_, 0(_addr_reg_41_)
	addi	$19, $19, 1
# was:	addi	_addr_reg_41_, _addr_reg_41_, 1
	addi	$18, $18, 1
# was:	addi	_i_reg_42_, _i_reg_42_, 1
	j	_loop_beg_43_
_loop_end_44_:
	ori	$2, $0, 1
# was:	ori	_arr_ind_51_, $0, 1
	addi	$3, $16, 4
# was:	addi	_arr_reg_52_, _letBind_36_, 4
	lw	$4, 0($16)
# was:	lw	_size_reg_53_, 0(_letBind_36_)
	bgez	$2, _safe_lab_56_
# was:	bgez	_arr_ind_51_, _safe_lab_56_
_error_lab_55_:
	ori	$5, $0, 10
# was:	ori	$5, $0, 10
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_56_:
	sub	$4, $2, $4
# was:	sub	_tmp_reg_54_, _arr_ind_51_, _size_reg_53_
	bgez	$4, _error_lab_55_
# was:	bgez	_tmp_reg_54_, _error_lab_55_
	add	$3, $3, $2
# was:	add	_arr_reg_52_, _arr_reg_52_, _arr_ind_51_
	lb	$2, 0($3)
# was:	lb	_arg_50_, 0(_arr_reg_52_)
# 	ori	$2,_arg_50_,0
	jal	ord
# was:	jal	ord, $2
# 	ori	_tmp_49_,$2,0
# 	ori	_letBind_48_,_tmp_49_,0
# 	ori	$2,_letBind_48_,0
	jal	putint
# was:	jal	putint, $2
	ori	$2, $16, 0
# was:	ori	_tmp_57_, _letBind_36_, 0
	ori	$16, $2, 0
# was:	ori	_mainres_1_, _tmp_57_, 0
# 	ori	$2,_tmp_57_,0
	jal	putstring
# was:	jal	putstring, $2
	ori	$2, $16, 0
# was:	ori	$2, _mainres_1_, 0
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