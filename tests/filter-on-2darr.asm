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
	sw	$25, -48($29)
	sw	$24, -44($29)
	sw	$23, -40($29)
	sw	$22, -36($29)
	sw	$21, -32($29)
	sw	$20, -28($29)
	sw	$19, -24($29)
	sw	$18, -20($29)
	sw	$17, -16($29)
	sw	$16, -12($29)
	addi	$29, $29, -52
	sw	$2, 0($29)
# was:	sw	_fun_arg_res_85_, 0($29)
	jal	getint
# was:	jal	getint, $2
# 	ori	_letBind_2_,$2,0
# 	ori	_size_reg_8_,_letBind_2_,0
	bgez	$2, _safe_lab_9_
# was:	bgez	_size_reg_8_, _safe_lab_9_
	ori	$5, $0, 11
# was:	ori	$5, $0, 11
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_9_:
	ori	$6, $28, 0
# was:	ori	_arr_reg_5_, $28, 0
	sll	$3, $2, 2
# was:	sll	_tmp_15_, _size_reg_8_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_15_, _tmp_15_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_15_
	sw	$2, 0($6)
# was:	sw	_size_reg_8_, 0(_arr_reg_5_)
	addi	$4, $6, 4
# was:	addi	_addr_reg_10_, _arr_reg_5_, 4
	ori	$3, $0, 0
# was:	ori	_i_reg_11_, $0, 0
_loop_beg_12_:
	sub	$5, $3, $2
# was:	sub	_tmp_reg_14_, _i_reg_11_, _size_reg_8_
	bgez	$5, _loop_end_13_
# was:	bgez	_tmp_reg_14_, _loop_end_13_
	sw	$3, 0($4)
# was:	sw	_i_reg_11_, 0(_addr_reg_10_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_10_, _addr_reg_10_, 4
	addi	$3, $3, 1
# was:	addi	_i_reg_11_, _i_reg_11_, 1
	j	_loop_beg_12_
_loop_end_13_:
	lw	$2, 0($6)
# was:	lw	_size_reg_4_, 0(_arr_reg_5_)
	ori	$3, $28, 0
# was:	ori	_letBind_3_, $28, 0
	sll	$4, $2, 2
# was:	sll	_tmp_32_, _size_reg_4_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_32_, _tmp_32_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_32_
	sw	$2, 0($3)
# was:	sw	_size_reg_4_, 0(_letBind_3_)
	addi	$5, $3, 4
# was:	addi	_addr_reg_16_, _letBind_3_, 4
	ori	$4, $0, 0
# was:	ori	_i_reg_17_, $0, 0
	addi	$6, $6, 4
# was:	addi	_elem_reg_6_, _arr_reg_5_, 4
_loop_beg_18_:
	sub	$7, $4, $2
# was:	sub	_tmp_reg_20_, _i_reg_17_, _size_reg_4_
	bgez	$7, _loop_end_19_
# was:	bgez	_tmp_reg_20_, _loop_end_19_
	lw	$7, 0($6)
# was:	lw	_res_reg_7_, 0(_elem_reg_6_)
	addi	$6, $6, 4
# was:	addi	_elem_reg_6_, _elem_reg_6_, 4
# 	ori	_plus_L_23_,_res_reg_7_,0
	ori	$8, $0, 2
# was:	ori	_plus_R_24_, $0, 2
	add	$7, $7, $8
# was:	add	_size_reg_22_, _plus_L_23_, _plus_R_24_
	bgez	$7, _safe_lab_25_
# was:	bgez	_size_reg_22_, _safe_lab_25_
	ori	$5, $0, 10
# was:	ori	$5, $0, 10
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_25_:
	ori	$8, $28, 0
# was:	ori	_fun_arg_res_21_, $28, 0
	sll	$9, $7, 2
# was:	sll	_tmp_31_, _size_reg_22_, 2
	addi	$9, $9, 4
# was:	addi	_tmp_31_, _tmp_31_, 4
	add	$28, $28, $9
# was:	add	$28, $28, _tmp_31_
	sw	$7, 0($8)
# was:	sw	_size_reg_22_, 0(_fun_arg_res_21_)
	addi	$10, $8, 4
# was:	addi	_addr_reg_26_, _fun_arg_res_21_, 4
	ori	$11, $0, 0
# was:	ori	_i_reg_27_, $0, 0
_loop_beg_28_:
	sub	$9, $11, $7
# was:	sub	_tmp_reg_30_, _i_reg_27_, _size_reg_22_
	bgez	$9, _loop_end_29_
# was:	bgez	_tmp_reg_30_, _loop_end_29_
	sw	$11, 0($10)
# was:	sw	_i_reg_27_, 0(_addr_reg_26_)
	addi	$10, $10, 4
# was:	addi	_addr_reg_26_, _addr_reg_26_, 4
	addi	$11, $11, 1
# was:	addi	_i_reg_27_, _i_reg_27_, 1
	j	_loop_beg_28_
_loop_end_29_:
	ori	$7, $8, 0
# was:	ori	_res_reg_7_, _fun_arg_res_21_, 0
	sw	$7, 0($5)
# was:	sw	_res_reg_7_, 0(_addr_reg_16_)
	addi	$5, $5, 4
# was:	addi	_addr_reg_16_, _addr_reg_16_, 4
	addi	$4, $4, 1
# was:	addi	_i_reg_17_, _i_reg_17_, 1
	j	_loop_beg_18_
_loop_end_19_:
	ori	$8, $3, 0
# was:	ori	_arr_reg_35_, _letBind_3_, 0
	lw	$3, 0($8)
# was:	lw	_size_reg_34_, 0(_arr_reg_35_)
	ori	$2, $28, 0
# was:	ori	_letBind_33_, $28, 0
	sll	$4, $3, 2
# was:	sll	_tmp_65_, _size_reg_34_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_65_, _tmp_65_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_65_
	sw	$3, 0($2)
# was:	sw	_size_reg_34_, 0(_letBind_33_)
	addi	$6, $2, 4
# was:	addi	_addr_reg_38_, _letBind_33_, 4
	addi	$5, $2, 0
# was:	addi	_arrh_reg_40_, _letBind_33_, 0
	ori	$7, $0, 0
# was:	ori	_i_reg_39_, $0, 0
	ori	$4, $0, 0
# was:	ori	_counter_reg_41_, $0, 0
	addi	$8, $8, 4
# was:	addi	_elem_reg_36_, _arr_reg_35_, 4
_loop_beg_43_:
	sub	$11, $7, $3
# was:	sub	_tmp_reg_46_, _i_reg_39_, _size_reg_34_
	bgez	$11, _loop_end_45_
# was:	bgez	_tmp_reg_46_, _loop_end_45_
	lw	$9, 0($8)
# was:	lw	_res_reg_37_, 0(_elem_reg_36_)
	addi	$8, $8, 4
# was:	addi	_elem_reg_36_, _elem_reg_36_, 4
	ori	$12, $9, 0
# was:	ori	_arr_reg_49_, _res_reg_37_, 0
	lw	$11, 0($12)
# was:	lw	_size_reg_50_, 0(_arr_reg_49_)
	ori	$14, $0, 0
# was:	ori	_letBind_48_, $0, 0
	addi	$12, $12, 4
# was:	addi	_arr_reg_49_, _arr_reg_49_, 4
	ori	$10, $0, 0
# was:	ori	_ind_var_51_, $0, 0
_loop_beg_53_:
	sub	$13, $10, $11
# was:	sub	_tmp_reg_52_, _ind_var_51_, _size_reg_50_
	bgez	$13, _loop_end_54_
# was:	bgez	_tmp_reg_52_, _loop_end_54_
	lw	$13, 0($12)
# was:	lw	_tmp_reg_52_, 0(_arr_reg_49_)
	addi	$12, $12, 4
# was:	addi	_arr_reg_49_, _arr_reg_49_, 4
# 	ori	_plus_L_56_,_letBind_48_,0
# 	ori	_plus_R_57_,_tmp_reg_52_,0
	add	$14, $14, $13
# was:	add	_fun_arg_res_55_, _plus_L_56_, _plus_R_57_
# 	ori	_letBind_48_,_fun_arg_res_55_,0
	addi	$10, $10, 1
# was:	addi	_ind_var_51_, _ind_var_51_, 1
	j	_loop_beg_53_
_loop_end_54_:
# 	ori	_divide_L_62_,_letBind_48_,0
	ori	$10, $0, 2
# was:	ori	_divide_R_63_, $0, 2
	div	$11, $14, $10
# was:	div	_times_L_60_, _divide_L_62_, _divide_R_63_
	ori	$10, $0, 2
# was:	ori	_times_R_61_, $0, 2
	mul	$10, $11, $10
# was:	mul	_eq_L_58_, _times_L_60_, _times_R_61_
# 	ori	_eq_R_59_,_letBind_48_,0
	ori	$11, $0, 0
# was:	ori	_fun_arg_res_47_, $0, 0
	bne	$10, $14, _false_64_
# was:	bne	_eq_L_58_, _eq_R_59_, _false_64_
	ori	$11, $0, 1
# was:	ori	_fun_arg_res_47_, $0, 1
_false_64_:
# 	ori	_tmp_reg_46_,_fun_arg_res_47_,0
	beq	$11, $0, _check_wrong_44_
# was:	beq	_tmp_reg_46_, $0, _check_wrong_44_
	sw	$9, 0($6)
# was:	sw	_res_reg_37_, 0(_addr_reg_38_)
	addi	$6, $6, 4
# was:	addi	_addr_reg_38_, _addr_reg_38_, 4
	addi	$4, $4, 1
# was:	addi	_counter_reg_41_, _counter_reg_41_, 1
_check_wrong_44_:
	addi	$7, $7, 1
# was:	addi	_i_reg_39_, _i_reg_39_, 1
	j	_loop_beg_43_
_loop_end_45_:
	sw	$4, 0($5)
# was:	sw	_counter_reg_41_, 0(_arrh_reg_40_)
# 	ori	_arr_reg_67_,_letBind_33_,0
	lw	$17, 0($2)
# was:	lw	_size_reg_66_, 0(_arr_reg_67_)
	ori	$16, $28, 0
# was:	ori	_mainres_1_, $28, 0
	sll	$3, $17, 2
# was:	sll	_tmp_88_, _size_reg_66_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_88_, _tmp_88_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_88_
	sw	$17, 0($16)
# was:	sw	_size_reg_66_, 0(_mainres_1_)
	addi	$18, $16, 4
# was:	addi	_addr_reg_70_, _mainres_1_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_71_, $0, 0
	addi	$20, $2, 4
# was:	addi	_elem_reg_68_, _arr_reg_67_, 4
_loop_beg_72_:
	sub	$2, $19, $17
# was:	sub	_tmp_reg_74_, _i_reg_71_, _size_reg_66_
	bgez	$2, _loop_end_73_
# was:	bgez	_tmp_reg_74_, _loop_end_73_
	lw	$2, 0($20)
# was:	lw	_res_reg_69_, 0(_elem_reg_68_)
	addi	$20, $20, 4
# was:	addi	_elem_reg_68_, _elem_reg_68_, 4
# 	ori	_arr_reg_77_,_res_reg_69_,0
	lw	$21, 0($2)
# was:	lw	_size_reg_76_, 0(_arr_reg_77_)
	ori	$22, $28, 0
# was:	ori	_fun_arg_res_75_, $28, 0
	sll	$3, $21, 2
# was:	sll	_tmp_87_, _size_reg_76_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_87_, _tmp_87_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_87_
	sw	$21, 0($22)
# was:	sw	_size_reg_76_, 0(_fun_arg_res_75_)
	addi	$24, $22, 4
# was:	addi	_addr_reg_80_, _fun_arg_res_75_, 4
	ori	$23, $0, 0
# was:	ori	_i_reg_81_, $0, 0
	addi	$25, $2, 4
# was:	addi	_elem_reg_78_, _arr_reg_77_, 4
_loop_beg_82_:
	sub	$2, $23, $21
# was:	sub	_tmp_reg_84_, _i_reg_81_, _size_reg_76_
	bgez	$2, _loop_end_83_
# was:	bgez	_tmp_reg_84_, _loop_end_83_
	lw	$2, 0($25)
# was:	lw	_res_reg_79_, 0(_elem_reg_78_)
	addi	$25, $25, 4
# was:	addi	_elem_reg_78_, _elem_reg_78_, 4
# 	ori	_tmp_86_,_res_reg_79_,0
# 	ori	_fun_arg_res_85_,_tmp_86_,0
	sw	$2, 0($29)
# was:	sw	_fun_arg_res_85_, 0($29)
	lw	$2, 0($29)
# was:	lw	_fun_arg_res_85_, 0($29)
# 	ori	$2,_fun_arg_res_85_,0
	jal	putint
# was:	jal	putint, $2
	lw	$2, 0($29)
# was:	lw	_fun_arg_res_85_, 0($29)
# 	ori	_res_reg_79_,_fun_arg_res_85_,0
	sw	$2, 0($24)
# was:	sw	_res_reg_79_, 0(_addr_reg_80_)
	addi	$24, $24, 4
# was:	addi	_addr_reg_80_, _addr_reg_80_, 4
	addi	$23, $23, 1
# was:	addi	_i_reg_81_, _i_reg_81_, 1
	j	_loop_beg_82_
_loop_end_83_:
	ori	$2, $22, 0
# was:	ori	_res_reg_69_, _fun_arg_res_75_, 0
	sw	$2, 0($18)
# was:	sw	_res_reg_69_, 0(_addr_reg_70_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_70_, _addr_reg_70_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_71_, _i_reg_71_, 1
	j	_loop_beg_72_
_loop_end_73_:
	ori	$2, $16, 0
# was:	ori	$2, _mainres_1_, 0
	addi	$29, $29, 52
	lw	$25, -48($29)
	lw	$24, -44($29)
	lw	$23, -40($29)
	lw	$22, -36($29)
	lw	$21, -32($29)
	lw	$20, -28($29)
	lw	$19, -24($29)
	lw	$18, -20($29)
	lw	$17, -16($29)
	lw	$16, -12($29)
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