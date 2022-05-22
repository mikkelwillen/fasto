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
# Function write_int
write_int:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
# 	ori	_param_x_1_,$2,0
	ori	$16, $2, 0
# was:	ori	_tmp_3_, _param_x_1_, 0
# 	ori	_write_intres_2_,_tmp_3_,0
	ori	$2, $16, 0
# was:	ori	$2, _write_intres_2_, 0
	jal	putint
# was:	jal	putint, $2
	ori	$2, $16, 0
# was:	ori	$2, _write_intres_2_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function write_int_arr
write_int_arr:
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
# was:	ori	_write_int_arrres_5_, $28, 0
	sll	$3, $16, 2
# was:	sll	_tmp_16_, _size_reg_6_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_16_, _tmp_16_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_16_
	sw	$16, 0($17)
# was:	sw	_size_reg_6_, 0(_write_int_arrres_5_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_10_, _write_int_arrres_5_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_11_, $0, 0
	addi	$20, $2, 4
# was:	addi	_elem_reg_8_, _arr_reg_7_, 4
_loop_beg_12_:
	sub	$2, $19, $16
# was:	sub	_tmp_reg_14_, _i_reg_11_, _size_reg_6_
	bgez	$2, _loop_end_13_
# was:	bgez	_tmp_reg_14_, _loop_end_13_
	lw	$2, 0($20)
# was:	lw	_res_reg_9_, 0(_elem_reg_8_)
	addi	$20, $20, 4
# was:	addi	_elem_reg_8_, _elem_reg_8_, 4
# 	ori	$2,_res_reg_9_,0
	jal	write_int
# was:	jal	write_int, $2
# 	ori	_tmp_reg_15_,$2,0
# 	ori	_res_reg_9_,_tmp_reg_15_,0
	sw	$2, 0($18)
# was:	sw	_res_reg_9_, 0(_addr_reg_10_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_10_, _addr_reg_10_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_11_, _i_reg_11_, 1
	j	_loop_beg_12_
_loop_end_13_:
	ori	$2, $17, 0
# was:	ori	$2, _write_int_arrres_5_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function isMul16
isMul16:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_a_17_,$2,0
# 	ori	_divide_L_23_,_param_a_17_,0
	ori	$3, $0, 16
# was:	ori	_divide_R_24_, $0, 16
	div	$4, $2, $3
# was:	div	_times_L_21_, _divide_L_23_, _divide_R_24_
	ori	$3, $0, 16
# was:	ori	_times_R_22_, $0, 16
	mul	$3, $4, $3
# was:	mul	_eq_L_19_, _times_L_21_, _times_R_22_
# 	ori	_eq_R_20_,_param_a_17_,0
	ori	$4, $0, 0
# was:	ori	_isMul16res_18_, $0, 0
	bne	$3, $2, _false_25_
# was:	bne	_eq_L_19_, _eq_R_20_, _false_25_
	ori	$4, $0, 1
# was:	ori	_isMul16res_18_, $0, 1
_false_25_:
	ori	$2, $4, 0
# was:	ori	$2, _isMul16res_18_, 0
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
	jal	getint
# was:	jal	getint, $2
# 	ori	_letBind_27_,$2,0
# 	ori	_size_reg_38_,_letBind_27_,0
	bgez	$2, _safe_lab_39_
# was:	bgez	_size_reg_38_, _safe_lab_39_
	ori	$5, $0, 10
# was:	ori	$5, $0, 10
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_39_:
	ori	$8, $28, 0
# was:	ori	_arr_reg_30_, $28, 0
	sll	$3, $2, 2
# was:	sll	_tmp_45_, _size_reg_38_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_45_, _tmp_45_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_45_
	sw	$2, 0($8)
# was:	sw	_size_reg_38_, 0(_arr_reg_30_)
	addi	$4, $8, 4
# was:	addi	_addr_reg_40_, _arr_reg_30_, 4
	ori	$3, $0, 0
# was:	ori	_i_reg_41_, $0, 0
_loop_beg_42_:
	sub	$5, $3, $2
# was:	sub	_tmp_reg_44_, _i_reg_41_, _size_reg_38_
	bgez	$5, _loop_end_43_
# was:	bgez	_tmp_reg_44_, _loop_end_43_
	sw	$3, 0($4)
# was:	sw	_i_reg_41_, 0(_addr_reg_40_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_40_, _addr_reg_40_, 4
	addi	$3, $3, 1
# was:	addi	_i_reg_41_, _i_reg_41_, 1
	j	_loop_beg_42_
_loop_end_43_:
	lw	$2, 0($8)
# was:	lw	_size_reg_29_, 0(_arr_reg_30_)
	ori	$3, $28, 0
# was:	ori	_letBind_28_, $28, 0
	sll	$4, $2, 2
# was:	sll	_tmp_58_, _size_reg_29_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_58_, _tmp_58_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_58_
	sw	$2, 0($3)
# was:	sw	_size_reg_29_, 0(_letBind_28_)
	addi	$5, $3, 4
# was:	addi	_addr_reg_33_, _letBind_28_, 4
	addi	$7, $3, 0
# was:	addi	_arrh_reg_35_, _letBind_28_, 0
	ori	$6, $0, 0
# was:	ori	_i_reg_34_, $0, 0
	ori	$4, $0, 0
# was:	ori	_counter_reg_36_, $0, 0
	addi	$4, $4, 4
# was:	addi	_counter_reg_36_, _counter_reg_36_, 4
	addi	$8, $8, 4
# was:	addi	_elem_reg_31_, _arr_reg_30_, 4
_loop_beg_46_:
	sub	$9, $6, $2
# was:	sub	_tmp_reg_49_, _i_reg_34_, _size_reg_29_
	bgez	$9, _loop_end_48_
# was:	bgez	_tmp_reg_49_, _loop_end_48_
	lw	$10, 0($8)
# was:	lw	_res_reg_32_, 0(_elem_reg_31_)
	lw	$9, 0($8)
# was:	lw	_tmp_reg_49_, 0(_elem_reg_31_)
	addi	$8, $8, 4
# was:	addi	_elem_reg_31_, _elem_reg_31_, 4
# 	ori	_eq_L_51_,_res_reg_32_,0
	ori	$12, $10, 0
# was:	ori	_divide_L_55_, _res_reg_32_, 0
	ori	$11, $0, 2
# was:	ori	_divide_R_56_, $0, 2
	div	$11, $12, $11
# was:	div	_times_L_53_, _divide_L_55_, _divide_R_56_
	ori	$12, $0, 2
# was:	ori	_times_R_54_, $0, 2
	mul	$12, $11, $12
# was:	mul	_eq_R_52_, _times_L_53_, _times_R_54_
	ori	$11, $0, 0
# was:	ori	_fun_arg_res_50_, $0, 0
	bne	$10, $12, _false_57_
# was:	bne	_eq_L_51_, _eq_R_52_, _false_57_
	ori	$11, $0, 1
# was:	ori	_fun_arg_res_50_, $0, 1
_false_57_:
	ori	$10, $11, 0
# was:	ori	_res_reg_32_, _fun_arg_res_50_, 0
	beq	$10, $0, _check_wrong_47_
# was:	beq	_res_reg_32_, $0, _check_wrong_47_
	sw	$9, 0($5)
# was:	sw	_tmp_reg_49_, 0(_addr_reg_33_)
	addi	$5, $5, 4
# was:	addi	_addr_reg_33_, _addr_reg_33_, 4
	addi	$4, $4, 1
# was:	addi	_counter_reg_36_, _counter_reg_36_, 1
_check_wrong_47_:
	addi	$6, $6, 1
# was:	addi	_i_reg_34_, _i_reg_34_, 1
	j	_loop_beg_46_
_loop_end_48_:
	sw	$4, 0($7)
# was:	sw	_counter_reg_36_, 0(_arrh_reg_35_)
	ori	$6, $3, 0
# was:	ori	_arr_reg_61_, _letBind_28_, 0
	lw	$4, 0($6)
# was:	lw	_size_reg_60_, 0(_arr_reg_61_)
	ori	$3, $28, 0
# was:	ori	_letBind_59_, $28, 0
	sll	$2, $4, 2
# was:	sll	_tmp_72_, _size_reg_60_, 2
	addi	$2, $2, 4
# was:	addi	_tmp_72_, _tmp_72_, 4
	add	$28, $28, $2
# was:	add	$28, $28, _tmp_72_
	sw	$4, 0($3)
# was:	sw	_size_reg_60_, 0(_letBind_59_)
	addi	$5, $3, 4
# was:	addi	_addr_reg_64_, _letBind_59_, 4
	ori	$2, $0, 0
# was:	ori	_i_reg_65_, $0, 0
	addi	$6, $6, 4
# was:	addi	_elem_reg_62_, _arr_reg_61_, 4
_loop_beg_66_:
	sub	$7, $2, $4
# was:	sub	_tmp_reg_68_, _i_reg_65_, _size_reg_60_
	bgez	$7, _loop_end_67_
# was:	bgez	_tmp_reg_68_, _loop_end_67_
	lw	$7, 0($6)
# was:	lw	_res_reg_63_, 0(_elem_reg_62_)
	addi	$6, $6, 4
# was:	addi	_elem_reg_62_, _elem_reg_62_, 4
	ori	$8, $7, 0
# was:	ori	_times_L_70_, _res_reg_63_, 0
# 	ori	_times_R_71_,_res_reg_63_,0
	mul	$7, $8, $7
# was:	mul	_fun_arg_res_69_, _times_L_70_, _times_R_71_
# 	ori	_res_reg_63_,_fun_arg_res_69_,0
	sw	$7, 0($5)
# was:	sw	_res_reg_63_, 0(_addr_reg_64_)
	addi	$5, $5, 4
# was:	addi	_addr_reg_64_, _addr_reg_64_, 4
	addi	$2, $2, 1
# was:	addi	_i_reg_65_, _i_reg_65_, 1
	j	_loop_beg_66_
_loop_end_67_:
	ori	$2, $3, 0
# was:	ori	_arr_reg_75_, _letBind_59_, 0
	lw	$17, 0($2)
# was:	lw	_size_reg_74_, 0(_arr_reg_75_)
	ori	$16, $28, 0
# was:	ori	_letBind_73_, $28, 0
	sll	$3, $17, 2
# was:	sll	_tmp_88_, _size_reg_74_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_88_, _tmp_88_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_88_
	sw	$17, 0($16)
# was:	sw	_size_reg_74_, 0(_letBind_73_)
	addi	$20, $16, 4
# was:	addi	_addr_reg_78_, _letBind_73_, 4
	addi	$21, $16, 0
# was:	addi	_arrh_reg_80_, _letBind_73_, 0
	ori	$19, $0, 0
# was:	ori	_i_reg_79_, $0, 0
	ori	$18, $0, 0
# was:	ori	_counter_reg_81_, $0, 0
	addi	$18, $18, 4
# was:	addi	_counter_reg_81_, _counter_reg_81_, 4
	addi	$23, $2, 4
# was:	addi	_elem_reg_76_, _arr_reg_75_, 4
_loop_beg_83_:
	sub	$22, $19, $17
# was:	sub	_tmp_reg_86_, _i_reg_79_, _size_reg_74_
	bgez	$22, _loop_end_85_
# was:	bgez	_tmp_reg_86_, _loop_end_85_
	lw	$2, 0($23)
# was:	lw	_res_reg_77_, 0(_elem_reg_76_)
	lw	$22, 0($23)
# was:	lw	_tmp_reg_86_, 0(_elem_reg_76_)
	addi	$23, $23, 4
# was:	addi	_elem_reg_76_, _elem_reg_76_, 4
# 	ori	$2,_res_reg_77_,0
	jal	isMul16
# was:	jal	isMul16, $2
# 	ori	_tmp_reg_87_,$2,0
# 	ori	_res_reg_77_,_tmp_reg_87_,0
	beq	$2, $0, _check_wrong_84_
# was:	beq	_res_reg_77_, $0, _check_wrong_84_
	sw	$22, 0($20)
# was:	sw	_tmp_reg_86_, 0(_addr_reg_78_)
	addi	$20, $20, 4
# was:	addi	_addr_reg_78_, _addr_reg_78_, 4
	addi	$18, $18, 1
# was:	addi	_counter_reg_81_, _counter_reg_81_, 1
_check_wrong_84_:
	addi	$19, $19, 1
# was:	addi	_i_reg_79_, _i_reg_79_, 1
	j	_loop_beg_83_
_loop_end_85_:
	sw	$18, 0($21)
# was:	sw	_counter_reg_81_, 0(_arrh_reg_80_)
	ori	$2, $16, 0
# was:	ori	_arg_89_, _letBind_73_, 0
# 	ori	$2,_arg_89_,0
	jal	write_int_arr
# was:	jal	write_int_arr, $2
# 	ori	_mainres_26_,$2,0
# 	ori	$2,_mainres_26_,0
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