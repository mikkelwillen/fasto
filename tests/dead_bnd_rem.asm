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
	sw	$16, -8($29)
	addi	$29, $29, -12
	jal	getint
# was:	jal	getint, $2
# 	ori	_letBind_2_,$2,0
	ori	$3, $2, 0
# was:	ori	_times_L_4_, _letBind_2_, 0
# 	ori	_times_R_5_,_letBind_2_,0
	mul	$4, $3, $2
# was:	mul	_letBind_3_, _times_L_4_, _times_R_5_
# 	ori	_plus_L_7_,_letBind_3_,0
	ori	$3, $0, 3
# was:	ori	_plus_R_8_, $0, 3
	add	$3, $4, $3
# was:	add	_letBind_6_, _plus_L_7_, _plus_R_8_
# 	ori	_plus_L_10_,_letBind_6_,0
# 	ori	_plus_R_11_,_letBind_2_,0
	add	$3, $3, $2
# was:	add	_letBind_9_, _plus_L_10_, _plus_R_11_
# 	ori	_plus_L_13_,_letBind_9_,0
	ori	$4, $0, 8
# was:	ori	_plus_R_14_, $0, 8
	add	$0, $3, $4
# was:	add	_letBind_12_, _plus_L_13_, _plus_R_14_
# 	ori	_plus_L_16_,_letBind_2_,0
	ori	$3, $0, 2
# was:	ori	_plus_R_17_, $0, 2
	add	$3, $2, $3
# was:	add	_letBind_15_, _plus_L_16_, _plus_R_17_
# 	ori	_plus_L_21_,_letBind_15_,0
	ori	$4, $0, 2
# was:	ori	_plus_R_22_, $0, 2
	add	$4, $3, $4
# was:	add	_plus_L_19_, _plus_L_21_, _plus_R_22_
# 	ori	_plus_R_20_,_letBind_2_,0
	add	$0, $4, $2
# was:	add	_letBind_18_, _plus_L_19_, _plus_R_20_
# 	ori	_plus_L_24_,_letBind_2_,0
	ori	$4, $0, 3
# was:	ori	_plus_R_25_, $0, 3
	add	$2, $2, $4
# was:	add	_letBind_23_, _plus_L_24_, _plus_R_25_
# 	ori	_times_L_27_,_letBind_15_,0
# 	ori	_times_R_28_,_letBind_23_,0
	mul	$2, $3, $2
# was:	mul	_letBind_26_, _times_L_27_, _times_R_28_
# 	ori	_tmp_29_,_letBind_26_,0
	ori	$16, $2, 0
# was:	ori	_mainres_1_, _tmp_29_, 0
	ori	$2, $16, 0
# was:	ori	$2, _mainres_1_, 0
	jal	putint
# was:	jal	putint, $2
	ori	$2, $16, 0
# was:	ori	$2, _mainres_1_, 0
	addi	$29, $29, 12
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