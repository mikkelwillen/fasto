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
# 	ori	_letBind_2_,$2,0
	ori	$3, $2, 0
# was:	ori	_size_reg_13_, _letBind_2_, 0
	bgez	$3, _safe_lab_14_
# was:	bgez	_size_reg_13_, _safe_lab_14_
	ori	$5, $0, 10
# was:	ori	$5, $0, 10
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_14_:
	ori	$2, $28, 0
# was:	ori	_arr_reg_5_, $28, 0
	sll	$4, $3, 2
# was:	sll	_tmp_20_, _size_reg_13_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_20_, _tmp_20_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_20_
	sw	$3, 0($2)
# was:	sw	_size_reg_13_, 0(_arr_reg_5_)
	addi	$5, $2, 4
# was:	addi	_addr_reg_15_, _arr_reg_5_, 4
	ori	$6, $0, 0
# was:	ori	_i_reg_16_, $0, 0
_loop_beg_17_:
	sub	$4, $6, $3
# was:	sub	_tmp_reg_19_, _i_reg_16_, _size_reg_13_
	bgez	$4, _loop_end_18_
# was:	bgez	_tmp_reg_19_, _loop_end_18_
	sw	$6, 0($5)
# was:	sw	_i_reg_16_, 0(_addr_reg_15_)
	addi	$5, $5, 4
# was:	addi	_addr_reg_15_, _addr_reg_15_, 4
	addi	$6, $6, 1
# was:	addi	_i_reg_16_, _i_reg_16_, 1
	j	_loop_beg_17_
_loop_end_18_:
	lw	$8, 0($2)
# was:	lw	_size_reg_4_, 0(_arr_reg_5_)
	ori	$3, $28, 0
# was:	ori	_letBind_3_, $28, 0
	sll	$4, $8, 2
# was:	sll	_tmp_33_, _size_reg_4_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_33_, _tmp_33_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_33_
	sw	$8, 0($3)
# was:	sw	_size_reg_4_, 0(_letBind_3_)
	addi	$6, $3, 4
# was:	addi	_addr_reg_8_, _letBind_3_, 4
	addi	$7, $3, 0
# was:	addi	_arrh_reg_10_, _letBind_3_, 0
	ori	$4, $0, 0
# was:	ori	_i_reg_9_, $0, 0
	ori	$5, $0, 0
# was:	ori	_counter_reg_11_, $0, 0
	addi	$2, $2, 4
# was:	addi	_elem_reg_6_, _arr_reg_5_, 4
_loop_beg_21_:
	sub	$10, $4, $8
# was:	sub	_tmp_reg_24_, _i_reg_9_, _size_reg_4_
	bgez	$10, _loop_end_23_
# was:	bgez	_tmp_reg_24_, _loop_end_23_
	lw	$11, 0($2)
# was:	lw	_res_reg_7_, 0(_elem_reg_6_)
	addi	$2, $2, 4
# was:	addi	_elem_reg_6_, _elem_reg_6_, 4
# 	ori	_eq_L_26_,_res_reg_7_,0
	ori	$10, $11, 0
# was:	ori	_divide_L_30_, _res_reg_7_, 0
	ori	$9, $0, 2
# was:	ori	_divide_R_31_, $0, 2
	div	$10, $10, $9
# was:	div	_times_L_28_, _divide_L_30_, _divide_R_31_
	ori	$9, $0, 2
# was:	ori	_times_R_29_, $0, 2
	mul	$9, $10, $9
# was:	mul	_eq_R_27_, _times_L_28_, _times_R_29_
	ori	$10, $0, 0
# was:	ori	_fun_arg_res_25_, $0, 0
	bne	$11, $9, _false_32_
# was:	bne	_eq_L_26_, _eq_R_27_, _false_32_
	ori	$10, $0, 1
# was:	ori	_fun_arg_res_25_, $0, 1
_false_32_:
# 	ori	_tmp_reg_24_,_fun_arg_res_25_,0
	beq	$10, $0, _check_wrong_22_
# was:	beq	_tmp_reg_24_, $0, _check_wrong_22_
	sw	$11, 0($6)
# was:	sw	_res_reg_7_, 0(_addr_reg_8_)
	addi	$6, $6, 4
# was:	addi	_addr_reg_8_, _addr_reg_8_, 4
	addi	$5, $5, 1
# was:	addi	_counter_reg_11_, _counter_reg_11_, 1
_check_wrong_22_:
	addi	$4, $4, 1
# was:	addi	_i_reg_9_, _i_reg_9_, 1
	j	_loop_beg_21_
_loop_end_23_:
	sw	$5, 0($7)
# was:	sw	_counter_reg_11_, 0(_arrh_reg_10_)
	ori	$6, $3, 0
# was:	ori	_arr_reg_36_, _letBind_3_, 0
	lw	$2, 0($6)
# was:	lw	_size_reg_35_, 0(_arr_reg_36_)
	ori	$3, $28, 0
# was:	ori	_letBind_34_, $28, 0
	sll	$4, $2, 2
# was:	sll	_tmp_47_, _size_reg_35_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_47_, _tmp_47_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_47_
	sw	$2, 0($3)
# was:	sw	_size_reg_35_, 0(_letBind_34_)
	addi	$5, $3, 4
# was:	addi	_addr_reg_39_, _letBind_34_, 4
	ori	$4, $0, 0
# was:	ori	_i_reg_40_, $0, 0
	addi	$6, $6, 4
# was:	addi	_elem_reg_37_, _arr_reg_36_, 4
_loop_beg_41_:
	sub	$7, $4, $2
# was:	sub	_tmp_reg_43_, _i_reg_40_, _size_reg_35_
	bgez	$7, _loop_end_42_
# was:	bgez	_tmp_reg_43_, _loop_end_42_
	lw	$7, 0($6)
# was:	lw	_res_reg_38_, 0(_elem_reg_37_)
	addi	$6, $6, 4
# was:	addi	_elem_reg_37_, _elem_reg_37_, 4
# 	ori	_times_L_45_,_res_reg_38_,0
	ori	$8, $7, 0
# was:	ori	_times_R_46_, _res_reg_38_, 0
	mul	$7, $7, $8
# was:	mul	_fun_arg_res_44_, _times_L_45_, _times_R_46_
# 	ori	_res_reg_38_,_fun_arg_res_44_,0
	sw	$7, 0($5)
# was:	sw	_res_reg_38_, 0(_addr_reg_39_)
	addi	$5, $5, 4
# was:	addi	_addr_reg_39_, _addr_reg_39_, 4
	addi	$4, $4, 1
# was:	addi	_i_reg_40_, _i_reg_40_, 1
	j	_loop_beg_41_
_loop_end_42_:
	ori	$2, $3, 0
# was:	ori	_arr_reg_50_, _letBind_34_, 0
	lw	$8, 0($2)
# was:	lw	_size_reg_49_, 0(_arr_reg_50_)
	ori	$9, $28, 0
# was:	ori	_letBind_48_, $28, 0
	sll	$3, $8, 2
# was:	sll	_tmp_70_, _size_reg_49_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_70_, _tmp_70_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_70_
	sw	$8, 0($9)
# was:	sw	_size_reg_49_, 0(_letBind_48_)
	addi	$4, $9, 4
# was:	addi	_addr_reg_53_, _letBind_48_, 4
	addi	$6, $9, 0
# was:	addi	_arrh_reg_55_, _letBind_48_, 0
	ori	$5, $0, 0
# was:	ori	_i_reg_54_, $0, 0
	ori	$7, $0, 0
# was:	ori	_counter_reg_56_, $0, 0
	addi	$3, $2, 4
# was:	addi	_elem_reg_51_, _arr_reg_50_, 4
_loop_beg_58_:
	sub	$11, $5, $8
# was:	sub	_tmp_reg_61_, _i_reg_54_, _size_reg_49_
	bgez	$11, _loop_end_60_
# was:	bgez	_tmp_reg_61_, _loop_end_60_
	lw	$2, 0($3)
# was:	lw	_res_reg_52_, 0(_elem_reg_51_)
	addi	$3, $3, 4
# was:	addi	_elem_reg_51_, _elem_reg_51_, 4
# 	ori	_divide_L_67_,_res_reg_52_,0
	ori	$10, $0, 16
# was:	ori	_divide_R_68_, $0, 16
	div	$10, $2, $10
# was:	div	_times_L_65_, _divide_L_67_, _divide_R_68_
	ori	$11, $0, 16
# was:	ori	_times_R_66_, $0, 16
	mul	$10, $10, $11
# was:	mul	_eq_L_63_, _times_L_65_, _times_R_66_
# 	ori	_eq_R_64_,_res_reg_52_,0
	ori	$11, $0, 0
# was:	ori	_fun_arg_res_62_, $0, 0
	bne	$10, $2, _false_69_
# was:	bne	_eq_L_63_, _eq_R_64_, _false_69_
	ori	$11, $0, 1
# was:	ori	_fun_arg_res_62_, $0, 1
_false_69_:
# 	ori	_tmp_reg_61_,_fun_arg_res_62_,0
	beq	$11, $0, _check_wrong_59_
# was:	beq	_tmp_reg_61_, $0, _check_wrong_59_
	sw	$2, 0($4)
# was:	sw	_res_reg_52_, 0(_addr_reg_53_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_53_, _addr_reg_53_, 4
	addi	$7, $7, 1
# was:	addi	_counter_reg_56_, _counter_reg_56_, 1
_check_wrong_59_:
	addi	$5, $5, 1
# was:	addi	_i_reg_54_, _i_reg_54_, 1
	j	_loop_beg_58_
_loop_end_60_:
	sw	$7, 0($6)
# was:	sw	_counter_reg_56_, 0(_arrh_reg_55_)
# 	ori	_arr_reg_72_,_letBind_48_,0
	lw	$16, 0($9)
# was:	lw	_size_reg_71_, 0(_arr_reg_72_)
	ori	$17, $28, 0
# was:	ori	_mainres_1_, $28, 0
	sll	$2, $16, 2
# was:	sll	_tmp_82_, _size_reg_71_, 2
	addi	$2, $2, 4
# was:	addi	_tmp_82_, _tmp_82_, 4
	add	$28, $28, $2
# was:	add	$28, $28, _tmp_82_
	sw	$16, 0($17)
# was:	sw	_size_reg_71_, 0(_mainres_1_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_75_, _mainres_1_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_76_, $0, 0
	addi	$20, $9, 4
# was:	addi	_elem_reg_73_, _arr_reg_72_, 4
_loop_beg_77_:
	sub	$2, $19, $16
# was:	sub	_tmp_reg_79_, _i_reg_76_, _size_reg_71_
	bgez	$2, _loop_end_78_
# was:	bgez	_tmp_reg_79_, _loop_end_78_
	lw	$21, 0($20)
# was:	lw	_res_reg_74_, 0(_elem_reg_73_)
	addi	$20, $20, 4
# was:	addi	_elem_reg_73_, _elem_reg_73_, 4
# 	ori	_tmp_81_,_res_reg_74_,0
# 	ori	_fun_arg_res_80_,_tmp_81_,0
	ori	$2, $21, 0
# was:	ori	$2, _fun_arg_res_80_, 0
	jal	putint
# was:	jal	putint, $2
# 	ori	_res_reg_74_,_fun_arg_res_80_,0
	sw	$21, 0($18)
# was:	sw	_res_reg_74_, 0(_addr_reg_75_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_75_, _addr_reg_75_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_76_, _i_reg_76_, 1
	j	_loop_beg_77_
_loop_end_78_:
	ori	$2, $17, 0
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