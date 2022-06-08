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
# Function write_1darr
write_1darr:
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
# was:	ori	_write_1darrres_5_, $28, 0
	sll	$3, $16, 2
# was:	sll	_tmp_16_, _size_reg_6_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_16_, _tmp_16_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_16_
	sw	$16, 0($17)
# was:	sw	_size_reg_6_, 0(_write_1darrres_5_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_10_, _write_1darrres_5_, 4
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
# was:	ori	$2, _write_1darrres_5_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function write_2darr
write_2darr:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
# 	ori	_param_x_17_,$2,0
# 	ori	_arr_reg_20_,_param_x_17_,0
	lw	$16, 0($2)
# was:	lw	_size_reg_19_, 0(_arr_reg_20_)
	ori	$17, $28, 0
# was:	ori	_write_2darrres_18_, $28, 0
	sll	$3, $16, 2
# was:	sll	_tmp_29_, _size_reg_19_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_29_, _tmp_29_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_29_
	sw	$16, 0($17)
# was:	sw	_size_reg_19_, 0(_write_2darrres_18_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_23_, _write_2darrres_18_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_24_, $0, 0
	addi	$20, $2, 4
# was:	addi	_elem_reg_21_, _arr_reg_20_, 4
_loop_beg_25_:
	sub	$2, $19, $16
# was:	sub	_tmp_reg_27_, _i_reg_24_, _size_reg_19_
	bgez	$2, _loop_end_26_
# was:	bgez	_tmp_reg_27_, _loop_end_26_
	lw	$2, 0($20)
# was:	lw	_res_reg_22_, 0(_elem_reg_21_)
	addi	$20, $20, 4
# was:	addi	_elem_reg_21_, _elem_reg_21_, 4
# 	ori	$2,_res_reg_22_,0
	jal	write_1darr
# was:	jal	write_1darr, $2
# 	ori	_tmp_reg_28_,$2,0
# 	ori	_res_reg_22_,_tmp_reg_28_,0
	sw	$2, 0($18)
# was:	sw	_res_reg_22_, 0(_addr_reg_23_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_23_, _addr_reg_23_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_24_, _i_reg_24_, 1
	j	_loop_beg_25_
_loop_end_26_:
	ori	$2, $17, 0
# was:	ori	$2, _write_2darrres_18_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function even
even:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_a_30_,$2,0
# 	ori	_divide_L_36_,_param_a_30_,0
	ori	$3, $0, 2
# was:	ori	_divide_R_37_, $0, 2
	beq	$3, $0, _divByZero_38_
# was:	beq	_divide_R_37_, $0, _divByZero_38_
	div	$4, $2, $3
# was:	div	_times_L_34_, _divide_L_36_, _divide_R_37_
	j	_endLab_39_
_divByZero_38_:
	ori	$5, $0, 6
# was:	ori	$5, $0, 6
	la	$6, _Msg_DivZero_
# was:	la	$6, _Msg_DivZero_
	j	_RuntimeError_
_endLab_39_:
	ori	$3, $0, 2
# was:	ori	_times_R_35_, $0, 2
	mul	$3, $4, $3
# was:	mul	_eq_L_32_, _times_L_34_, _times_R_35_
# 	ori	_eq_R_33_,_param_a_30_,0
	ori	$4, $0, 0
# was:	ori	_evenres_31_, $0, 0
	bne	$3, $2, _false_40_
# was:	bne	_eq_L_32_, _eq_R_33_, _false_40_
	ori	$4, $0, 1
# was:	ori	_evenres_31_, $0, 1
_false_40_:
	ori	$2, $4, 0
# was:	ori	$2, _evenres_31_, 0
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
# 	ori	_letBind_42_,$2,0
# 	ori	_size_reg_48_,_letBind_42_,0
	bgez	$2, _safe_lab_49_
# was:	bgez	_size_reg_48_, _safe_lab_49_
	ori	$5, $0, 11
# was:	ori	$5, $0, 11
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_49_:
	ori	$6, $28, 0
# was:	ori	_arr_reg_45_, $28, 0
	sll	$3, $2, 2
# was:	sll	_tmp_55_, _size_reg_48_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_55_, _tmp_55_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_55_
	sw	$2, 0($6)
# was:	sw	_size_reg_48_, 0(_arr_reg_45_)
	addi	$3, $6, 4
# was:	addi	_addr_reg_50_, _arr_reg_45_, 4
	ori	$5, $0, 0
# was:	ori	_i_reg_51_, $0, 0
_loop_beg_52_:
	sub	$4, $5, $2
# was:	sub	_tmp_reg_54_, _i_reg_51_, _size_reg_48_
	bgez	$4, _loop_end_53_
# was:	bgez	_tmp_reg_54_, _loop_end_53_
	sw	$5, 0($3)
# was:	sw	_i_reg_51_, 0(_addr_reg_50_)
	addi	$3, $3, 4
# was:	addi	_addr_reg_50_, _addr_reg_50_, 4
	addi	$5, $5, 1
# was:	addi	_i_reg_51_, _i_reg_51_, 1
	j	_loop_beg_52_
_loop_end_53_:
	lw	$3, 0($6)
# was:	lw	_size_reg_44_, 0(_arr_reg_45_)
	ori	$2, $28, 0
# was:	ori	_letBind_43_, $28, 0
	sll	$4, $3, 2
# was:	sll	_tmp_72_, _size_reg_44_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_72_, _tmp_72_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_72_
	sw	$3, 0($2)
# was:	sw	_size_reg_44_, 0(_letBind_43_)
	addi	$4, $2, 4
# was:	addi	_addr_reg_56_, _letBind_43_, 4
	ori	$5, $0, 0
# was:	ori	_i_reg_57_, $0, 0
	addi	$6, $6, 4
# was:	addi	_elem_reg_46_, _arr_reg_45_, 4
_loop_beg_58_:
	sub	$7, $5, $3
# was:	sub	_tmp_reg_60_, _i_reg_57_, _size_reg_44_
	bgez	$7, _loop_end_59_
# was:	bgez	_tmp_reg_60_, _loop_end_59_
	lw	$7, 0($6)
# was:	lw	_res_reg_47_, 0(_elem_reg_46_)
	addi	$6, $6, 4
# was:	addi	_elem_reg_46_, _elem_reg_46_, 4
# 	ori	_plus_L_63_,_res_reg_47_,0
	ori	$8, $0, 2
# was:	ori	_plus_R_64_, $0, 2
	add	$8, $7, $8
# was:	add	_size_reg_62_, _plus_L_63_, _plus_R_64_
	bgez	$8, _safe_lab_65_
# was:	bgez	_size_reg_62_, _safe_lab_65_
	ori	$5, $0, 10
# was:	ori	$5, $0, 10
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_65_:
	ori	$7, $28, 0
# was:	ori	_fun_arg_res_61_, $28, 0
	sll	$9, $8, 2
# was:	sll	_tmp_71_, _size_reg_62_, 2
	addi	$9, $9, 4
# was:	addi	_tmp_71_, _tmp_71_, 4
	add	$28, $28, $9
# was:	add	$28, $28, _tmp_71_
	sw	$8, 0($7)
# was:	sw	_size_reg_62_, 0(_fun_arg_res_61_)
	addi	$11, $7, 4
# was:	addi	_addr_reg_66_, _fun_arg_res_61_, 4
	ori	$9, $0, 0
# was:	ori	_i_reg_67_, $0, 0
_loop_beg_68_:
	sub	$10, $9, $8
# was:	sub	_tmp_reg_70_, _i_reg_67_, _size_reg_62_
	bgez	$10, _loop_end_69_
# was:	bgez	_tmp_reg_70_, _loop_end_69_
	sw	$9, 0($11)
# was:	sw	_i_reg_67_, 0(_addr_reg_66_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_66_, _addr_reg_66_, 4
	addi	$9, $9, 1
# was:	addi	_i_reg_67_, _i_reg_67_, 1
	j	_loop_beg_68_
_loop_end_69_:
# 	ori	_res_reg_47_,_fun_arg_res_61_,0
	sw	$7, 0($4)
# was:	sw	_res_reg_47_, 0(_addr_reg_56_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_56_, _addr_reg_56_, 4
	addi	$5, $5, 1
# was:	addi	_i_reg_57_, _i_reg_57_, 1
	j	_loop_beg_58_
_loop_end_59_:
# 	ori	_arr_reg_75_,_letBind_43_,0
	lw	$16, 0($2)
# was:	lw	_size_reg_74_, 0(_arr_reg_75_)
	ori	$17, $28, 0
# was:	ori	_letBind_73_, $28, 0
	sll	$3, $16, 2
# was:	sll	_tmp_99_, _size_reg_74_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_99_, _tmp_99_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_99_
	sw	$16, 0($17)
# was:	sw	_size_reg_74_, 0(_letBind_73_)
	addi	$19, $17, 4
# was:	addi	_addr_reg_78_, _letBind_73_, 4
	addi	$21, $17, 0
# was:	addi	_arrh_reg_80_, _letBind_73_, 0
	ori	$18, $0, 0
# was:	ori	_i_reg_79_, $0, 0
	ori	$20, $0, 0
# was:	ori	_counter_reg_81_, $0, 0
	addi	$22, $2, 4
# was:	addi	_elem_reg_76_, _arr_reg_75_, 4
_loop_beg_83_:
	sub	$2, $18, $16
# was:	sub	_tmp_reg_86_, _i_reg_79_, _size_reg_74_
	bgez	$2, _loop_end_85_
# was:	bgez	_tmp_reg_86_, _loop_end_85_
	lw	$23, 0($22)
# was:	lw	_res_reg_77_, 0(_elem_reg_76_)
	addi	$22, $22, 4
# was:	addi	_elem_reg_76_, _elem_reg_76_, 4
	ori	$4, $23, 0
# was:	ori	_arr_reg_89_, _res_reg_77_, 0
	lw	$3, 0($4)
# was:	lw	_size_reg_90_, 0(_arr_reg_89_)
	ori	$5, $0, 0
# was:	ori	_letBind_88_, $0, 0
	addi	$4, $4, 4
# was:	addi	_arr_reg_89_, _arr_reg_89_, 4
	ori	$2, $0, 0
# was:	ori	_ind_var_91_, $0, 0
_loop_beg_93_:
	sub	$6, $2, $3
# was:	sub	_tmp_reg_92_, _ind_var_91_, _size_reg_90_
	bgez	$6, _loop_end_94_
# was:	bgez	_tmp_reg_92_, _loop_end_94_
	lw	$6, 0($4)
# was:	lw	_tmp_reg_92_, 0(_arr_reg_89_)
	addi	$4, $4, 4
# was:	addi	_arr_reg_89_, _arr_reg_89_, 4
# 	ori	_plus_L_96_,_letBind_88_,0
# 	ori	_plus_R_97_,_tmp_reg_92_,0
	add	$5, $5, $6
# was:	add	_fun_arg_res_95_, _plus_L_96_, _plus_R_97_
# 	ori	_letBind_88_,_fun_arg_res_95_,0
	addi	$2, $2, 1
# was:	addi	_ind_var_91_, _ind_var_91_, 1
	j	_loop_beg_93_
_loop_end_94_:
	ori	$2, $5, 0
# was:	ori	_arg_98_, _letBind_88_, 0
# 	ori	$2,_arg_98_,0
	jal	even
# was:	jal	even, $2
# 	ori	_fun_arg_res_87_,$2,0
# 	ori	_tmp_reg_86_,_fun_arg_res_87_,0
	beq	$2, $0, _check_wrong_84_
# was:	beq	_tmp_reg_86_, $0, _check_wrong_84_
	sw	$23, 0($19)
# was:	sw	_res_reg_77_, 0(_addr_reg_78_)
	addi	$19, $19, 4
# was:	addi	_addr_reg_78_, _addr_reg_78_, 4
	addi	$20, $20, 1
# was:	addi	_counter_reg_81_, _counter_reg_81_, 1
_check_wrong_84_:
	addi	$18, $18, 1
# was:	addi	_i_reg_79_, _i_reg_79_, 1
	j	_loop_beg_83_
_loop_end_85_:
	sw	$20, 0($21)
# was:	sw	_counter_reg_81_, 0(_arrh_reg_80_)
	ori	$2, $17, 0
# was:	ori	_arg_100_, _letBind_73_, 0
# 	ori	$2,_arg_100_,0
	jal	write_2darr
# was:	jal	write_2darr, $2
# 	ori	_mainres_41_,$2,0
# 	ori	$2,_mainres_41_,0
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