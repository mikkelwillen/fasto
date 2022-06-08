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
	beq	$3, $0, _divByZero_25_
# was:	beq	_divide_R_24_, $0, _divByZero_25_
	div	$4, $2, $3
# was:	div	_times_L_21_, _divide_L_23_, _divide_R_24_
	j	_endLab_26_
_divByZero_25_:
	ori	$5, $0, 6
# was:	ori	$5, $0, 6
	la	$6, _Msg_DivZero_
# was:	la	$6, _Msg_DivZero_
	j	_RuntimeError_
_endLab_26_:
	ori	$3, $0, 16
# was:	ori	_times_R_22_, $0, 16
	mul	$3, $4, $3
# was:	mul	_eq_L_19_, _times_L_21_, _times_R_22_
# 	ori	_eq_R_20_,_param_a_17_,0
	ori	$4, $0, 0
# was:	ori	_isMul16res_18_, $0, 0
	bne	$3, $2, _false_27_
# was:	bne	_eq_L_19_, _eq_R_20_, _false_27_
	ori	$4, $0, 1
# was:	ori	_isMul16res_18_, $0, 1
_false_27_:
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
# 	ori	_letBind_29_,$2,0
# 	ori	_size_reg_40_,_letBind_29_,0
	bgez	$2, _safe_lab_41_
# was:	bgez	_size_reg_40_, _safe_lab_41_
	ori	$5, $0, 10
# was:	ori	$5, $0, 10
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_41_:
	ori	$8, $28, 0
# was:	ori	_arr_reg_32_, $28, 0
	sll	$3, $2, 2
# was:	sll	_tmp_47_, _size_reg_40_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_47_, _tmp_47_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_47_
	sw	$2, 0($8)
# was:	sw	_size_reg_40_, 0(_arr_reg_32_)
	addi	$5, $8, 4
# was:	addi	_addr_reg_42_, _arr_reg_32_, 4
	ori	$4, $0, 0
# was:	ori	_i_reg_43_, $0, 0
_loop_beg_44_:
	sub	$3, $4, $2
# was:	sub	_tmp_reg_46_, _i_reg_43_, _size_reg_40_
	bgez	$3, _loop_end_45_
# was:	bgez	_tmp_reg_46_, _loop_end_45_
	sw	$4, 0($5)
# was:	sw	_i_reg_43_, 0(_addr_reg_42_)
	addi	$5, $5, 4
# was:	addi	_addr_reg_42_, _addr_reg_42_, 4
	addi	$4, $4, 1
# was:	addi	_i_reg_43_, _i_reg_43_, 1
	j	_loop_beg_44_
_loop_end_45_:
	lw	$2, 0($8)
# was:	lw	_size_reg_31_, 0(_arr_reg_32_)
	ori	$3, $28, 0
# was:	ori	_letBind_30_, $28, 0
	sll	$4, $2, 2
# was:	sll	_tmp_62_, _size_reg_31_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_62_, _tmp_62_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_62_
	sw	$2, 0($3)
# was:	sw	_size_reg_31_, 0(_letBind_30_)
	addi	$5, $3, 4
# was:	addi	_addr_reg_35_, _letBind_30_, 4
	addi	$7, $3, 0
# was:	addi	_arrh_reg_37_, _letBind_30_, 0
	ori	$6, $0, 0
# was:	ori	_i_reg_36_, $0, 0
	ori	$4, $0, 0
# was:	ori	_counter_reg_38_, $0, 0
	addi	$8, $8, 4
# was:	addi	_elem_reg_33_, _arr_reg_32_, 4
_loop_beg_48_:
	sub	$9, $6, $2
# was:	sub	_tmp_reg_51_, _i_reg_36_, _size_reg_31_
	bgez	$9, _loop_end_50_
# was:	bgez	_tmp_reg_51_, _loop_end_50_
	lw	$11, 0($8)
# was:	lw	_res_reg_34_, 0(_elem_reg_33_)
	addi	$8, $8, 4
# was:	addi	_elem_reg_33_, _elem_reg_33_, 4
# 	ori	_eq_L_53_,_res_reg_34_,0
	ori	$10, $11, 0
# was:	ori	_divide_L_57_, _res_reg_34_, 0
	ori	$9, $0, 2
# was:	ori	_divide_R_58_, $0, 2
	beq	$9, $0, _divByZero_59_
# was:	beq	_divide_R_58_, $0, _divByZero_59_
	div	$10, $10, $9
# was:	div	_times_L_55_, _divide_L_57_, _divide_R_58_
	j	_endLab_60_
_divByZero_59_:
	ori	$5, $0, 10
# was:	ori	$5, $0, 10
	la	$6, _Msg_DivZero_
# was:	la	$6, _Msg_DivZero_
	j	_RuntimeError_
_endLab_60_:
	ori	$9, $0, 2
# was:	ori	_times_R_56_, $0, 2
	mul	$10, $10, $9
# was:	mul	_eq_R_54_, _times_L_55_, _times_R_56_
	ori	$9, $0, 0
# was:	ori	_fun_arg_res_52_, $0, 0
	bne	$11, $10, _false_61_
# was:	bne	_eq_L_53_, _eq_R_54_, _false_61_
	ori	$9, $0, 1
# was:	ori	_fun_arg_res_52_, $0, 1
_false_61_:
# 	ori	_tmp_reg_51_,_fun_arg_res_52_,0
	beq	$9, $0, _check_wrong_49_
# was:	beq	_tmp_reg_51_, $0, _check_wrong_49_
	sw	$11, 0($5)
# was:	sw	_res_reg_34_, 0(_addr_reg_35_)
	addi	$5, $5, 4
# was:	addi	_addr_reg_35_, _addr_reg_35_, 4
	addi	$4, $4, 1
# was:	addi	_counter_reg_38_, _counter_reg_38_, 1
_check_wrong_49_:
	addi	$6, $6, 1
# was:	addi	_i_reg_36_, _i_reg_36_, 1
	j	_loop_beg_48_
_loop_end_50_:
	sw	$4, 0($7)
# was:	sw	_counter_reg_38_, 0(_arrh_reg_37_)
	ori	$6, $3, 0
# was:	ori	_arr_reg_65_, _letBind_30_, 0
	lw	$3, 0($6)
# was:	lw	_size_reg_64_, 0(_arr_reg_65_)
	ori	$2, $28, 0
# was:	ori	_letBind_63_, $28, 0
	sll	$4, $3, 2
# was:	sll	_tmp_76_, _size_reg_64_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_76_, _tmp_76_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_76_
	sw	$3, 0($2)
# was:	sw	_size_reg_64_, 0(_letBind_63_)
	addi	$4, $2, 4
# was:	addi	_addr_reg_68_, _letBind_63_, 4
	ori	$5, $0, 0
# was:	ori	_i_reg_69_, $0, 0
	addi	$6, $6, 4
# was:	addi	_elem_reg_66_, _arr_reg_65_, 4
_loop_beg_70_:
	sub	$7, $5, $3
# was:	sub	_tmp_reg_72_, _i_reg_69_, _size_reg_64_
	bgez	$7, _loop_end_71_
# was:	bgez	_tmp_reg_72_, _loop_end_71_
	lw	$7, 0($6)
# was:	lw	_res_reg_67_, 0(_elem_reg_66_)
	addi	$6, $6, 4
# was:	addi	_elem_reg_66_, _elem_reg_66_, 4
# 	ori	_times_L_74_,_res_reg_67_,0
	ori	$8, $7, 0
# was:	ori	_times_R_75_, _res_reg_67_, 0
	mul	$7, $7, $8
# was:	mul	_fun_arg_res_73_, _times_L_74_, _times_R_75_
# 	ori	_res_reg_67_,_fun_arg_res_73_,0
	sw	$7, 0($4)
# was:	sw	_res_reg_67_, 0(_addr_reg_68_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_68_, _addr_reg_68_, 4
	addi	$5, $5, 1
# was:	addi	_i_reg_69_, _i_reg_69_, 1
	j	_loop_beg_70_
_loop_end_71_:
# 	ori	_arr_reg_79_,_letBind_63_,0
	lw	$17, 0($2)
# was:	lw	_size_reg_78_, 0(_arr_reg_79_)
	ori	$16, $28, 0
# was:	ori	_letBind_77_, $28, 0
	sll	$3, $17, 2
# was:	sll	_tmp_92_, _size_reg_78_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_92_, _tmp_92_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_92_
	sw	$17, 0($16)
# was:	sw	_size_reg_78_, 0(_letBind_77_)
	addi	$20, $16, 4
# was:	addi	_addr_reg_82_, _letBind_77_, 4
	addi	$21, $16, 0
# was:	addi	_arrh_reg_84_, _letBind_77_, 0
	ori	$19, $0, 0
# was:	ori	_i_reg_83_, $0, 0
	ori	$18, $0, 0
# was:	ori	_counter_reg_85_, $0, 0
	addi	$23, $2, 4
# was:	addi	_elem_reg_80_, _arr_reg_79_, 4
_loop_beg_87_:
	sub	$2, $19, $17
# was:	sub	_tmp_reg_90_, _i_reg_83_, _size_reg_78_
	bgez	$2, _loop_end_89_
# was:	bgez	_tmp_reg_90_, _loop_end_89_
	lw	$22, 0($23)
# was:	lw	_res_reg_81_, 0(_elem_reg_80_)
	addi	$23, $23, 4
# was:	addi	_elem_reg_80_, _elem_reg_80_, 4
	ori	$2, $22, 0
# was:	ori	$2, _res_reg_81_, 0
	jal	isMul16
# was:	jal	isMul16, $2
# 	ori	_tmp_reg_91_,$2,0
# 	ori	_tmp_reg_90_,_tmp_reg_91_,0
	beq	$2, $0, _check_wrong_88_
# was:	beq	_tmp_reg_90_, $0, _check_wrong_88_
	sw	$22, 0($20)
# was:	sw	_res_reg_81_, 0(_addr_reg_82_)
	addi	$20, $20, 4
# was:	addi	_addr_reg_82_, _addr_reg_82_, 4
	addi	$18, $18, 1
# was:	addi	_counter_reg_85_, _counter_reg_85_, 1
_check_wrong_88_:
	addi	$19, $19, 1
# was:	addi	_i_reg_83_, _i_reg_83_, 1
	j	_loop_beg_87_
_loop_end_89_:
	sw	$18, 0($21)
# was:	sw	_counter_reg_85_, 0(_arrh_reg_84_)
	ori	$2, $16, 0
# was:	ori	_arg_93_, _letBind_77_, 0
# 	ori	$2,_arg_93_,0
	jal	write_int_arr
# was:	jal	write_int_arr, $2
# 	ori	_mainres_28_,$2,0
# 	ori	$2,_mainres_28_,0
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