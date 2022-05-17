	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$4, _Incorre_155_
# was:	la	_Incorre_155__addr, _Incorre_155_
	ori	$3, $0, 17
# was:	ori	_Incorre_155__init, $0, 17
	sw	$3, 0($4)
# was:	sw	_Incorre_155__init, 0(_Incorre_155__addr)
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
# Function mul
mul:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_x_1_, $2, 0
# 	ori	_param_y_2_,$3,0
# 	ori	_eq_L_8_,_param_y_2_,0
	ori	$4, $0, 0
# was:	ori	_eq_R_9_, $0, 0
	ori	$2, $0, 0
# was:	ori	_cond_7_, $0, 0
	bne	$3, $4, _false_10_
# was:	bne	_eq_L_8_, _eq_R_9_, _false_10_
	ori	$2, $0, 1
# was:	ori	_cond_7_, $0, 1
_false_10_:
	bne	$2, $0, _then_4_
# was:	bne	_cond_7_, $0, _then_4_
	j	_else_5_
_then_4_:
	ori	$2, $0, 0
# was:	ori	_mulres_3_, $0, 0
	j	_endif_6_
_else_5_:
# 	ori	_lt_L_15_,_param_y_2_,0
	ori	$2, $0, 0
# was:	ori	_lt_R_16_, $0, 0
	slt	$2, $3, $2
# was:	slt	_cond_14_, _lt_L_15_, _lt_R_16_
	bne	$2, $0, _then_11_
# was:	bne	_cond_14_, $0, _then_11_
	j	_else_12_
_then_11_:
	ori	$2, $16, 0
# was:	ori	_arg_19_, _param_x_1_, 0
# 	ori	_plus_L_21_,_param_y_2_,0
	ori	$4, $0, 1
# was:	ori	_plus_R_22_, $0, 1
	add	$3, $3, $4
# was:	add	_arg_20_, _plus_L_21_, _plus_R_22_
# 	ori	$2,_arg_19_,0
# 	ori	$3,_arg_20_,0
	jal	mul
# was:	jal	mul, $2 $3
# 	ori	_minus_L_17_,$2,0
# 	ori	_minus_R_18_,_param_x_1_,0
	sub	$2, $2, $16
# was:	sub	_mulres_3_, _minus_L_17_, _minus_R_18_
	j	_endif_13_
_else_12_:
# 	ori	_plus_L_23_,_param_x_1_,0
	ori	$2, $16, 0
# was:	ori	_arg_25_, _param_x_1_, 0
# 	ori	_minus_L_27_,_param_y_2_,0
	ori	$4, $0, 1
# was:	ori	_minus_R_28_, $0, 1
	sub	$3, $3, $4
# was:	sub	_arg_26_, _minus_L_27_, _minus_R_28_
# 	ori	$2,_arg_25_,0
# 	ori	$3,_arg_26_,0
	jal	mul
# was:	jal	mul, $2 $3
# 	ori	_plus_R_24_,$2,0
	add	$2, $16, $2
# was:	add	_mulres_3_, _plus_L_23_, _plus_R_24_
_endif_13_:
_endif_6_:
# 	ori	$2,_mulres_3_,0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function readInt
readInt:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_i_29_,$2,0
	jal	getint
# was:	jal	getint, $2
# 	ori	_readIntres_30_,$2,0
# 	ori	$2,_readIntres_30_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
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
	ori	$17, $2, 0
# was:	ori	_letBind_32_, $2, 0
	ori	$2, $0, 0
# was:	ori	_lt_L_37_, $0, 0
# 	ori	_lt_R_38_,_letBind_32_,0
	slt	$2, $2, $17
# was:	slt	_cond_36_, _lt_L_37_, _lt_R_38_
	bne	$2, $0, _then_33_
# was:	bne	_cond_36_, $0, _then_33_
	j	_else_34_
_then_33_:
# 	ori	_size_reg_44_,_letBind_32_,0
	bgez	$17, _safe_lab_45_
# was:	bgez	_size_reg_44_, _safe_lab_45_
	ori	$5, $0, 14
# was:	ori	$5, $0, 14
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_45_:
	ori	$2, $28, 0
# was:	ori	_arr_reg_41_, $28, 0
	sll	$3, $17, 2
# was:	sll	_tmp_51_, _size_reg_44_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_51_, _tmp_51_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_51_
	sw	$17, 0($2)
# was:	sw	_size_reg_44_, 0(_arr_reg_41_)
	addi	$4, $2, 4
# was:	addi	_addr_reg_46_, _arr_reg_41_, 4
	ori	$3, $0, 0
# was:	ori	_i_reg_47_, $0, 0
_loop_beg_48_:
	sub	$5, $3, $17
# was:	sub	_tmp_reg_50_, _i_reg_47_, _size_reg_44_
	bgez	$5, _loop_end_49_
# was:	bgez	_tmp_reg_50_, _loop_end_49_
	sw	$3, 0($4)
# was:	sw	_i_reg_47_, 0(_addr_reg_46_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_46_, _addr_reg_46_, 4
	addi	$3, $3, 1
# was:	addi	_i_reg_47_, _i_reg_47_, 1
	j	_loop_beg_48_
_loop_end_49_:
	lw	$18, 0($2)
# was:	lw	_size_reg_40_, 0(_arr_reg_41_)
	ori	$16, $28, 0
# was:	ori	_letBind_39_, $28, 0
	sll	$3, $18, 2
# was:	sll	_tmp_58_, _size_reg_40_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_58_, _tmp_58_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_58_
	sw	$18, 0($16)
# was:	sw	_size_reg_40_, 0(_letBind_39_)
	addi	$20, $16, 4
# was:	addi	_addr_reg_52_, _letBind_39_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_53_, $0, 0
	addi	$21, $2, 4
# was:	addi	_elem_reg_42_, _arr_reg_41_, 4
_loop_beg_54_:
	sub	$2, $19, $18
# was:	sub	_tmp_reg_56_, _i_reg_53_, _size_reg_40_
	bgez	$2, _loop_end_55_
# was:	bgez	_tmp_reg_56_, _loop_end_55_
	lw	$2, 0($21)
# was:	lw	_res_reg_43_, 0(_elem_reg_42_)
	addi	$21, $21, 4
# was:	addi	_elem_reg_42_, _elem_reg_42_, 4
# 	ori	$2,_res_reg_43_,0
	jal	readInt
# was:	jal	readInt, $2
# 	ori	_tmp_reg_57_,$2,0
# 	ori	_res_reg_43_,_tmp_reg_57_,0
	sw	$2, 0($20)
# was:	sw	_res_reg_43_, 0(_addr_reg_52_)
	addi	$20, $20, 4
# was:	addi	_addr_reg_52_, _addr_reg_52_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_53_, _i_reg_53_, 1
	j	_loop_beg_54_
_loop_end_55_:
# 	ori	_size_reg_64_,_letBind_32_,0
	bgez	$17, _safe_lab_65_
# was:	bgez	_size_reg_64_, _safe_lab_65_
	ori	$5, $0, 19
# was:	ori	$5, $0, 19
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_65_:
	ori	$5, $28, 0
# was:	ori	_arr_reg_61_, $28, 0
	sll	$2, $17, 2
# was:	sll	_tmp_71_, _size_reg_64_, 2
	addi	$2, $2, 4
# was:	addi	_tmp_71_, _tmp_71_, 4
	add	$28, $28, $2
# was:	add	$28, $28, _tmp_71_
	sw	$17, 0($5)
# was:	sw	_size_reg_64_, 0(_arr_reg_61_)
	addi	$4, $5, 4
# was:	addi	_addr_reg_66_, _arr_reg_61_, 4
	ori	$3, $0, 0
# was:	ori	_i_reg_67_, $0, 0
_loop_beg_68_:
	sub	$2, $3, $17
# was:	sub	_tmp_reg_70_, _i_reg_67_, _size_reg_64_
	bgez	$2, _loop_end_69_
# was:	bgez	_tmp_reg_70_, _loop_end_69_
	sw	$3, 0($4)
# was:	sw	_i_reg_67_, 0(_addr_reg_66_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_66_, _addr_reg_66_, 4
	addi	$3, $3, 1
# was:	addi	_i_reg_67_, _i_reg_67_, 1
	j	_loop_beg_68_
_loop_end_69_:
	lw	$2, 0($5)
# was:	lw	_size_reg_60_, 0(_arr_reg_61_)
	ori	$18, $28, 0
# was:	ori	_letBind_59_, $28, 0
	sll	$3, $2, 2
# was:	sll	_tmp_107_, _size_reg_60_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_107_, _tmp_107_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_107_
	sw	$2, 0($18)
# was:	sw	_size_reg_60_, 0(_letBind_59_)
	addi	$3, $18, 4
# was:	addi	_addr_reg_72_, _letBind_59_, 4
	ori	$4, $0, 0
# was:	ori	_i_reg_73_, $0, 0
	addi	$5, $5, 4
# was:	addi	_elem_reg_62_, _arr_reg_61_, 4
_loop_beg_74_:
	sub	$6, $4, $2
# was:	sub	_tmp_reg_76_, _i_reg_73_, _size_reg_60_
	bgez	$6, _loop_end_75_
# was:	bgez	_tmp_reg_76_, _loop_end_75_
	lw	$7, 0($5)
# was:	lw	_res_reg_63_, 0(_elem_reg_62_)
	addi	$5, $5, 4
# was:	addi	_elem_reg_62_, _elem_reg_62_, 4
# 	ori	_eq_L_82_,_res_reg_63_,0
	ori	$8, $0, 0
# was:	ori	_eq_R_83_, $0, 0
	ori	$6, $0, 0
# was:	ori	_cond_81_, $0, 0
	bne	$7, $8, _false_84_
# was:	bne	_eq_L_82_, _eq_R_83_, _false_84_
	ori	$6, $0, 1
# was:	ori	_cond_81_, $0, 1
_false_84_:
	bne	$6, $0, _then_78_
# was:	bne	_cond_81_, $0, _then_78_
	j	_else_79_
_then_78_:
	ori	$7, $0, 0
# was:	ori	_arr_ind_85_, $0, 0
	addi	$6, $16, 4
# was:	addi	_arr_reg_86_, _letBind_39_, 4
	lw	$8, 0($16)
# was:	lw	_size_reg_87_, 0(_letBind_39_)
	bgez	$7, _safe_lab_90_
# was:	bgez	_arr_ind_85_, _safe_lab_90_
_error_lab_89_:
	ori	$5, $0, 17
# was:	ori	$5, $0, 17
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_90_:
	sub	$8, $7, $8
# was:	sub	_tmp_reg_88_, _arr_ind_85_, _size_reg_87_
	bgez	$8, _error_lab_89_
# was:	bgez	_tmp_reg_88_, _error_lab_89_
	sll	$7, $7, 2
# was:	sll	_arr_ind_85_, _arr_ind_85_, 2
	add	$6, $6, $7
# was:	add	_arr_reg_86_, _arr_reg_86_, _arr_ind_85_
	lw	$7, 0($6)
# was:	lw	_fun_arg_res_77_, 0(_arr_reg_86_)
	j	_endif_80_
_else_79_:
	ori	$6, $7, 0
# was:	ori	_arr_ind_93_, _res_reg_63_, 0
	addi	$8, $16, 4
# was:	addi	_arr_reg_94_, _letBind_39_, 4
	lw	$9, 0($16)
# was:	lw	_size_reg_95_, 0(_letBind_39_)
	bgez	$6, _safe_lab_98_
# was:	bgez	_arr_ind_93_, _safe_lab_98_
_error_lab_97_:
	ori	$5, $0, 19
# was:	ori	$5, $0, 19
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_98_:
	sub	$9, $6, $9
# was:	sub	_tmp_reg_96_, _arr_ind_93_, _size_reg_95_
	bgez	$9, _error_lab_97_
# was:	bgez	_tmp_reg_96_, _error_lab_97_
	sll	$6, $6, 2
# was:	sll	_arr_ind_93_, _arr_ind_93_, 2
	add	$8, $8, $6
# was:	add	_arr_reg_94_, _arr_reg_94_, _arr_ind_93_
	lw	$6, 0($8)
# was:	lw	_minus_L_91_, 0(_arr_reg_94_)
	ori	$8, $7, 0
# was:	ori	_minus_L_100_, _res_reg_63_, 0
	ori	$7, $0, 1
# was:	ori	_minus_R_101_, $0, 1
	sub	$8, $8, $7
# was:	sub	_arr_ind_99_, _minus_L_100_, _minus_R_101_
	addi	$7, $16, 4
# was:	addi	_arr_reg_102_, _letBind_39_, 4
	lw	$9, 0($16)
# was:	lw	_size_reg_103_, 0(_letBind_39_)
	bgez	$8, _safe_lab_106_
# was:	bgez	_arr_ind_99_, _safe_lab_106_
_error_lab_105_:
	ori	$5, $0, 19
# was:	ori	$5, $0, 19
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_106_:
	sub	$9, $8, $9
# was:	sub	_tmp_reg_104_, _arr_ind_99_, _size_reg_103_
	bgez	$9, _error_lab_105_
# was:	bgez	_tmp_reg_104_, _error_lab_105_
	sll	$8, $8, 2
# was:	sll	_arr_ind_99_, _arr_ind_99_, 2
	add	$7, $7, $8
# was:	add	_arr_reg_102_, _arr_reg_102_, _arr_ind_99_
	lw	$7, 0($7)
# was:	lw	_minus_R_92_, 0(_arr_reg_102_)
	sub	$7, $6, $7
# was:	sub	_fun_arg_res_77_, _minus_L_91_, _minus_R_92_
_endif_80_:
# 	ori	_res_reg_63_,_fun_arg_res_77_,0
	sw	$7, 0($3)
# was:	sw	_res_reg_63_, 0(_addr_reg_72_)
	addi	$3, $3, 4
# was:	addi	_addr_reg_72_, _addr_reg_72_, 4
	addi	$4, $4, 1
# was:	addi	_i_reg_73_, _i_reg_73_, 1
	j	_loop_beg_74_
_loop_end_75_:
# 	ori	_size_reg_113_,_letBind_32_,0
	bgez	$17, _safe_lab_114_
# was:	bgez	_size_reg_113_, _safe_lab_114_
	ori	$5, $0, 21
# was:	ori	$5, $0, 21
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_114_:
	ori	$2, $28, 0
# was:	ori	_arr_reg_110_, $28, 0
	sll	$3, $17, 2
# was:	sll	_tmp_120_, _size_reg_113_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_120_, _tmp_120_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_120_
	sw	$17, 0($2)
# was:	sw	_size_reg_113_, 0(_arr_reg_110_)
	addi	$3, $2, 4
# was:	addi	_addr_reg_115_, _arr_reg_110_, 4
	ori	$4, $0, 0
# was:	ori	_i_reg_116_, $0, 0
_loop_beg_117_:
	sub	$5, $4, $17
# was:	sub	_tmp_reg_119_, _i_reg_116_, _size_reg_113_
	bgez	$5, _loop_end_118_
# was:	bgez	_tmp_reg_119_, _loop_end_118_
	sw	$4, 0($3)
# was:	sw	_i_reg_116_, 0(_addr_reg_115_)
	addi	$3, $3, 4
# was:	addi	_addr_reg_115_, _addr_reg_115_, 4
	addi	$4, $4, 1
# was:	addi	_i_reg_116_, _i_reg_116_, 1
	j	_loop_beg_117_
_loop_end_118_:
	lw	$16, 0($2)
# was:	lw	_size_reg_109_, 0(_arr_reg_110_)
	ori	$17, $28, 0
# was:	ori	_letBind_108_, $28, 0
	sll	$3, $16, 2
# was:	sll	_tmp_141_, _size_reg_109_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_141_, _tmp_141_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_141_
	sw	$16, 0($17)
# was:	sw	_size_reg_109_, 0(_letBind_108_)
	addi	$19, $17, 4
# was:	addi	_addr_reg_121_, _letBind_108_, 4
	ori	$20, $0, 0
# was:	ori	_i_reg_122_, $0, 0
	addi	$21, $2, 4
# was:	addi	_elem_reg_111_, _arr_reg_110_, 4
_loop_beg_123_:
	sub	$2, $20, $16
# was:	sub	_tmp_reg_125_, _i_reg_122_, _size_reg_109_
	bgez	$2, _loop_end_124_
# was:	bgez	_tmp_reg_125_, _loop_end_124_
	lw	$3, 0($21)
# was:	lw	_res_reg_112_, 0(_elem_reg_111_)
	addi	$21, $21, 4
# was:	addi	_elem_reg_111_, _elem_reg_111_, 4
	ori	$4, $3, 0
# was:	ori	_arr_ind_128_, _res_reg_112_, 0
	addi	$2, $18, 4
# was:	addi	_arr_reg_129_, _letBind_59_, 4
	lw	$5, 0($18)
# was:	lw	_size_reg_130_, 0(_letBind_59_)
	bgez	$4, _safe_lab_133_
# was:	bgez	_arr_ind_128_, _safe_lab_133_
_error_lab_132_:
	ori	$5, $0, 21
# was:	ori	$5, $0, 21
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_133_:
	sub	$5, $4, $5
# was:	sub	_tmp_reg_131_, _arr_ind_128_, _size_reg_130_
	bgez	$5, _error_lab_132_
# was:	bgez	_tmp_reg_131_, _error_lab_132_
	sll	$4, $4, 2
# was:	sll	_arr_ind_128_, _arr_ind_128_, 2
	add	$2, $2, $4
# was:	add	_arr_reg_129_, _arr_reg_129_, _arr_ind_128_
	lw	$2, 0($2)
# was:	lw	_arg_127_, 0(_arr_reg_129_)
# 	ori	_arr_ind_135_,_res_reg_112_,0
	addi	$4, $18, 4
# was:	addi	_arr_reg_136_, _letBind_59_, 4
	lw	$5, 0($18)
# was:	lw	_size_reg_137_, 0(_letBind_59_)
	bgez	$3, _safe_lab_140_
# was:	bgez	_arr_ind_135_, _safe_lab_140_
_error_lab_139_:
	ori	$5, $0, 21
# was:	ori	$5, $0, 21
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_140_:
	sub	$5, $3, $5
# was:	sub	_tmp_reg_138_, _arr_ind_135_, _size_reg_137_
	bgez	$5, _error_lab_139_
# was:	bgez	_tmp_reg_138_, _error_lab_139_
	sll	$3, $3, 2
# was:	sll	_arr_ind_135_, _arr_ind_135_, 2
	add	$4, $4, $3
# was:	add	_arr_reg_136_, _arr_reg_136_, _arr_ind_135_
	lw	$3, 0($4)
# was:	lw	_arg_134_, 0(_arr_reg_136_)
# 	ori	$2,_arg_127_,0
# 	ori	$3,_arg_134_,0
	jal	mul
# was:	jal	mul, $2 $3
# 	ori	_fun_arg_res_126_,$2,0
	ori	$3, $2, 0
# was:	ori	_res_reg_112_, _fun_arg_res_126_, 0
	sw	$3, 0($19)
# was:	sw	_res_reg_112_, 0(_addr_reg_121_)
	addi	$19, $19, 4
# was:	addi	_addr_reg_121_, _addr_reg_121_, 4
	addi	$20, $20, 1
# was:	addi	_i_reg_122_, _i_reg_122_, 1
	j	_loop_beg_123_
_loop_end_124_:
# 	ori	_arr_reg_143_,_letBind_108_,0
	lw	$2, 0($17)
# was:	lw	_size_reg_144_, 0(_arr_reg_143_)
	ori	$4, $0, 0
# was:	ori	_letBind_142_, $0, 0
	addi	$17, $17, 4
# was:	addi	_arr_reg_143_, _arr_reg_143_, 4
	ori	$3, $0, 0
# was:	ori	_ind_var_145_, $0, 0
_loop_beg_147_:
	sub	$5, $3, $2
# was:	sub	_tmp_reg_146_, _ind_var_145_, _size_reg_144_
	bgez	$5, _loop_end_148_
# was:	bgez	_tmp_reg_146_, _loop_end_148_
	lw	$5, 0($17)
# was:	lw	_tmp_reg_146_, 0(_arr_reg_143_)
	addi	$17, $17, 4
# was:	addi	_arr_reg_143_, _arr_reg_143_, 4
# 	ori	_plus_L_150_,_letBind_142_,0
# 	ori	_plus_R_151_,_tmp_reg_146_,0
	add	$4, $4, $5
# was:	add	_fun_arg_res_149_, _plus_L_150_, _plus_R_151_
# 	ori	_letBind_142_,_fun_arg_res_149_,0
	addi	$3, $3, 1
# was:	addi	_ind_var_145_, _ind_var_145_, 1
	j	_loop_beg_147_
_loop_end_148_:
# 	ori	_tmp_152_,_letBind_142_,0
	ori	$16, $4, 0
# was:	ori	_mainres_31_, _tmp_152_, 0
	ori	$2, $16, 0
# was:	ori	$2, _mainres_31_, 0
	jal	putint
# was:	jal	putint, $2
	j	_endif_35_
_else_34_:
	la	$2, _Incorre_155_
# was:	la	_tmp_154_, _Incorre_155_
# _Incorre_155_: string "Incorrect Input!\n"
# 	ori	_letBind_153_,_tmp_154_,0
# 	ori	$2,_tmp_154_,0
	jal	putstring
# was:	jal	putstring, $2
	ori	$16, $0, 0
# was:	ori	_mainres_31_, $0, 0
_endif_35_:
	ori	$2, $16, 0
# was:	ori	$2, _mainres_31_, 0
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
_Incorre_155_:
	.space	4
	.asciiz	"Incorrect Input!\n"
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