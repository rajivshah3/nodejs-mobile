.machine	"any"
.csect	.text[PR],7

.globl	.bn_mul_mont_fpu64
.align	5
.bn_mul_mont_fpu64:
	cmpwi	8,3
	mr	9,3
	li	3,0
	bclr	14,0
	andi.	0,8,1
	bclr	6,2

	slwi	8,8,3
	li	12,-4096
	slwi	10,8,2
	add	10,10,8
	addi	10,10,552
	subf	10,10,1
	and	10,10,12
	subf	10,1,10
	mr	12,1
	stdux	1,1,10

	std	19,-200(12)
	std	20,-192(12)
	std	21,-184(12)
	std	22,-176(12)
	std	23,-168(12)
	std	24,-160(12)
	std	25,-152(12)
	std	26,-144(12)
	std	27,-136(12)
	std	28,-128(12)
	std	29,-120(12)
	std	30,-112(12)
	std	31,-104(12)
	stfd	20,-96(12)
	stfd	21,-88(12)
	stfd	22,-80(12)
	stfd	23,-72(12)
	stfd	24,-64(12)
	stfd	25,-56(12)
	stfd	26,-48(12)
	stfd	27,-40(12)
	stfd	28,-32(12)
	stfd	29,-24(12)
	stfd	30,-16(12)
	stfd	31,-8(12)

	addi	10,1,264
	li	12,-64
	add	22,10,8
	and	22,22,12

	addi	22,22,-8
	srwi	11,8,4
	addi	11,11,-1
	addi	10,1,184
	li	0,0
	mtctr	11
	ld	23,0(4)
	ld	27,0(5)
	ld	7,0(7)

	mulld	31,23,27

	rldicl	24,27,0,48
	rldicl	25,27,48,48
	rldicl	26,27,32,48
	rldicl	27,27,16,48
	std	24,64(1)
	std	25,72(1)
	std	26,80(1)
	std	27,88(1)

	mulld	31,31,7

	rldicl	28,31,0,48
	rldicl	29,31,48,48
	rldicl	30,31,32,48
	rldicl	31,31,16,48
	std	28,96(1)
	std	29,104(1)
	std	30,112(1)
	std	31,120(1)

	rldicl	24,23,0,32
	rldicl	25,23,32,32
	lwz	26,12(4)
	lwz	27,8(4)
	lwz	28,4(6)
	lwz	29,0(6)
	lwz	30,12(6)
	lwz	31,8(6)
	lfd	0,64(1)
	lfd	1,72(1)
	lfd	2,80(1)
	lfd	3,88(1)
	lfd	4,96(1)
	lfd	5,104(1)
	lfd	6,112(1)
	lfd	7,120(1)
	std	24,128(1)
	std	25,136(1)
	std	26,144(1)
	std	27,152(1)
	std	28,160(1)
	std	29,168(1)
	std	30,176(1)
	std	31,184(1)
	fcfid	0,0
	fcfid	1,1
	fcfid	2,2
	fcfid	3,3
	fcfid	4,4
	fcfid	5,5
	fcfid	6,6
	fcfid	7,7

	lfd	10,128(1)
	lfd	11,136(1)
	lfd	12,144(1)
	lfd	13,152(1)
	lfd	20,160(1)
	lfd	21,168(1)
	lfd	22,176(1)
	lfd	23,184(1)
	fcfid	10,10
	fcfid	11,11
	fcfid	12,12
	fcfid	13,13
	fcfid	20,20
	fcfid	21,21
	fcfid	22,22
	fcfid	23,23
	addi	4,4,16
	addi	6,6,16

	fmul	26,11,0
	fmul	27,11,1
	stfd	10,8(22)
	stfd	11,16(22)
	fmul	28,12,0
	fmul	29,12,1
	stfd	12,24(22)
	stfd	13,32(22)
	fmul	30,13,0
	fmul	31,13,1
	stfd	20,40(22)
	stfd	21,48(22)
	fmul	24,10,0
	fmul	25,10,1
	stfd	22,56(22)
	stfdu	23,64(22)

	fmadd	26,10,2,26
	fmadd	27,10,3,27
	fmadd	28,11,2,28
	fmadd	29,11,3,29
	fmadd	30,12,2,30
	fmadd	31,12,3,31
	fmul	8,13,2
	fmul	9,13,3

	fmadd	26,21,4,26
	fmadd	27,21,5,27
	fmadd	28,22,4,28
	fmadd	29,22,5,29
	fmadd	30,23,4,30
	fmadd	31,23,5,31
	fmadd	24,20,4,24
	fmadd	25,20,5,25

	fmadd	26,20,6,26
	fmadd	27,20,7,27
	fmadd	28,21,6,28
	fmadd	29,21,7,29
	fmadd	30,22,6,30
	fmadd	31,22,7,31
	fmadd	8,23,6,8
	fmadd	9,23,7,9

	fctid	24,24
	fctid	25,25
	fctid	26,26
	fctid	27,27
	fctid	28,28
	fctid	29,29
	fctid	30,30
	fctid	31,31

	stfd	24,64(1)
	stfd	25,72(1)
	stfd	26,80(1)
	stfd	27,88(1)
	stfd	28,96(1)
	stfd	29,104(1)
	stfd	30,112(1)
	stfd	31,120(1)

.align	5
L1st:
	lwz	24,4(4)
	lwz	25,0(4)
	lwz	26,12(4)
	lwz	27,8(4)
	lwz	28,4(6)
	lwz	29,0(6)
	lwz	30,12(6)
	lwz	31,8(6)
	std	24,128(1)
	std	25,136(1)
	std	26,144(1)
	std	27,152(1)
	std	28,160(1)
	std	29,168(1)
	std	30,176(1)
	std	31,184(1)
	ld	24,64(1)
	ld	25,72(1)
	ld	26,80(1)
	ld	27,88(1)
	ld	28,96(1)
	ld	29,104(1)
	ld	30,112(1)
	ld	31,120(1)
	lfd	10,128(1)
	lfd	11,136(1)
	lfd	12,144(1)
	lfd	13,152(1)
	lfd	20,160(1)
	lfd	21,168(1)
	lfd	22,176(1)
	lfd	23,184(1)
	fcfid	10,10
	fcfid	11,11
	fcfid	12,12
	fcfid	13,13
	fcfid	20,20
	fcfid	21,21
	fcfid	22,22
	fcfid	23,23
	addi	4,4,16
	addi	6,6,16

	fmul	26,11,0
	fmul	27,11,1
	fmul	28,12,0
	fmul	29,12,1
	stfd	10,8(22)
	stfd	11,16(22)
	fmul	30,13,0
	fmul	31,13,1
	fmadd	24,10,0,8
	fmadd	25,10,1,9
	stfd	12,24(22)
	stfd	13,32(22)
	fmadd	26,10,2,26
	fmadd	27,10,3,27
	fmadd	28,11,2,28
	fmadd	29,11,3,29
	stfd	20,40(22)
	stfd	21,48(22)
	fmadd	30,12,2,30
	fmadd	31,12,3,31
	add	24,24,0
	fmul	8,13,2
	fmul	9,13,3
	stfd	22,56(22)
	stfdu	23,64(22)
	srdi	0,24,16
	add	25,25,0
	srdi	0,25,16

	fmadd	26,21,4,26
	fmadd	27,21,5,27
	insrdi	24,25,16,32
	fmadd	28,22,4,28
	fmadd	29,22,5,29
	add	26,26,0
	fmadd	30,23,4,30
	fmadd	31,23,5,31
	srdi	0,26,16
	fmadd	24,20,4,24
	fmadd	25,20,5,25
	insrdi	24,26,16,16
	add	27,27,0
	srdi	0,27,16

	fmadd	26,20,6,26
	fmadd	27,20,7,27
	insrdi	24,27,16,0
	fmadd	28,21,6,28
	fmadd	29,21,7,29
	add	28,28,0
	fmadd	30,22,6,30
	fmadd	31,22,7,31
	srdi	0,28,16
	fmadd	8,23,6,8
	fmadd	9,23,7,9
	add	29,29,0
	srdi	0,29,16
	insrdi	28,29,16,32

	fctid	24,24
	fctid	25,25
	add	30,30,0
	fctid	26,26
	fctid	27,27
	srdi	0,30,16
	fctid	28,28
	fctid	29,29
	insrdi	28,30,16,16
	fctid	30,30
	fctid	31,31
	add	31,31,0
	insrdi	28,31,16,0
	srdi	0,31,16

	stfd	24,64(1)
	stfd	25,72(1)
	stfd	26,80(1)
	stfd	27,88(1)
	stfd	28,96(1)
	stfd	29,104(1)
	stfd	30,112(1)
	stfd	31,120(1)
	std	24,8(10)
	stdu	28,16(10)
	bc	16,0,L1st

	fctid	8,8
	fctid	9,9
	ld	24,64(1)
	ld	25,72(1)
	ld	26,80(1)
	ld	27,88(1)
	ld	28,96(1)
	ld	29,104(1)
	ld	30,112(1)
	ld	31,120(1)
	stfd	8,128(1)
	stfd	9,136(1)

	add	24,24,0
	srdi	0,24,16
	add	25,25,0
	srdi	0,25,16
	insrdi	24,25,16,32
	add	26,26,0
	srdi	0,26,16
	insrdi	24,26,16,16
	add	27,27,0
	srdi	0,27,16
	insrdi	24,27,16,0
	add	28,28,0
	srdi	0,28,16
	add	29,29,0
	srdi	0,29,16
	insrdi	28,29,16,32
	add	30,30,0
	srdi	0,30,16
	insrdi	28,30,16,16
	add	31,31,0
	insrdi	28,31,16,0
	srdi	0,31,16
	ld	30,128(1)
	ld	31,136(1)

	std	24,8(10)
	stdu	28,16(10)

	add	30,30,0
	srdi	0,30,16
	add	31,31,0
	insrdi	30,31,48,0
	srdi	3,31,48
	std	30,8(10)
	slwi	31,8,2
	subf	22,31,22

	li	12,8
.align	5
Louter:
	addi	10,1,192
	li	0,0
	mtctr	11
	ldx	27,5,12

	ld	30,200(1)
	mulld	31,23,27
	add	31,31,30

	rldicl	24,27,0,48
	rldicl	25,27,48,48
	rldicl	26,27,32,48
	rldicl	27,27,16,48
	std	24,64(1)
	std	25,72(1)
	std	26,80(1)
	std	27,88(1)

	mulld	31,31,7

	rldicl	28,31,0,48
	rldicl	29,31,48,48
	rldicl	30,31,32,48
	rldicl	31,31,16,48
	std	28,96(1)
	std	29,104(1)
	std	30,112(1)
	std	31,120(1)
	lfd	10,8(22)
	lfd	11,16(22)
	lfd	12,24(22)
	lfd	13,32(22)
	lfd	20,40(22)
	lfd	21,48(22)
	lfd	22,56(22)
	lfdu	23,64(22)

	lfd	0,64(1)
	lfd	1,72(1)
	lfd	2,80(1)
	lfd	3,88(1)
	lfd	4,96(1)
	lfd	5,104(1)
	lfd	6,112(1)
	lfd	7,120(1)

	fcfid	0,0
	fcfid	1,1
	fcfid	2,2
	fcfid	3,3
	fcfid	4,4
	fcfid	5,5
	fcfid	6,6
	fcfid	7,7

	fmul	26,11,0
	fmul	27,11,1
	fmul	28,12,0
	fmul	29,12,1
	fmul	30,13,0
	fmul	31,13,1
	fmul	24,10,0
	fmul	25,10,1

	fmadd	26,10,2,26
	fmadd	27,10,3,27
	fmadd	28,11,2,28
	fmadd	29,11,3,29
	fmadd	30,12,2,30
	fmadd	31,12,3,31
	fmul	8,13,2
	fmul	9,13,3

	fmadd	26,21,4,26
	fmadd	27,21,5,27
	lfd	10,8(22)
	lfd	11,16(22)
	fmadd	28,22,4,28
	fmadd	29,22,5,29
	lfd	12,24(22)
	lfd	13,32(22)
	fmadd	30,23,4,30
	fmadd	31,23,5,31
	fmadd	24,20,4,24
	fmadd	25,20,5,25

	fmadd	26,20,6,26
	fmadd	27,20,7,27
	fmadd	28,21,6,28
	fmadd	29,21,7,29
	fmadd	30,22,6,30
	fmadd	31,22,7,31
	fmadd	8,23,6,8
	fmadd	9,23,7,9

	fctid	24,24
	fctid	25,25
	fctid	26,26
	fctid	27,27
	fctid	28,28
	fctid	29,29
	fctid	30,30
	fctid	31,31

	stfd	24,64(1)
	stfd	25,72(1)
	stfd	26,80(1)
	stfd	27,88(1)
	stfd	28,96(1)
	stfd	29,104(1)
	stfd	30,112(1)
	stfd	31,120(1)

.align	5
Linner:
	fmul	26,11,0
	fmul	27,11,1
	fmul	28,12,0
	fmul	29,12,1
	lfd	20,40(22)
	lfd	21,48(22)
	fmul	30,13,0
	fmul	31,13,1
	fmadd	24,10,0,8
	fmadd	25,10,1,9
	lfd	22,56(22)
	lfdu	23,64(22)

	fmadd	26,10,2,26
	fmadd	27,10,3,27
	fmadd	28,11,2,28
	fmadd	29,11,3,29
	lfd	10,8(22)
	lfd	11,16(22)
	fmadd	30,12,2,30
	fmadd	31,12,3,31
	fmul	8,13,2
	fmul	9,13,3
	lfd	12,24(22)
	lfd	13,32(22)
	fmadd	26,21,4,26
	fmadd	27,21,5,27
	ld	24,64(1)
	ld	25,72(1)
	fmadd	28,22,4,28
	fmadd	29,22,5,29
	ld	26,80(1)
	ld	27,88(1)
	fmadd	30,23,4,30
	fmadd	31,23,5,31
	add	24,24,0
	ld	28,96(1)
	ld	29,104(1)
	fmadd	24,20,4,24
	fmadd	25,20,5,25
	srdi	0,24,16
	add	25,25,0
	srdi	0,25,16
	ld	30,112(1)
	ld	31,120(1)

	fmadd	26,20,6,26
	fmadd	27,20,7,27
	insrdi	24,25,16,32
	ld	25,8(10)
	fmadd	28,21,6,28
	fmadd	29,21,7,29
	add	26,26,0
	fmadd	30,22,6,30
	fmadd	31,22,7,31
	srdi	0,26,16
	insrdi	24,26,16,16
	fmadd	8,23,6,8
	fmadd	9,23,7,9
	add	27,27,0
	ldu	26,16(10)
	srdi	0,27,16
	insrdi	24,27,16,0
	add	28,28,0

	fctid	24,24
	fctid	25,25
	srdi	0,28,16
	fctid	26,26
	fctid	27,27
	add	29,29,0
	fctid	28,28
	fctid	29,29
	srdi	0,29,16
	insrdi	28,29,16,32
	fctid	30,30
	fctid	31,31
	add	30,30,0
	srdi	0,30,16
	insrdi	28,30,16,16

	stfd	24,64(1)
	stfd	25,72(1)
	add	31,31,0
	addc	27,24,25
	stfd	26,80(1)
	stfd	27,88(1)
	insrdi	28,31,16,0
	srdi	0,31,16
	stfd	28,96(1)
	stfd	29,104(1)
	adde	29,28,26
	stfd	30,112(1)
	stfd	31,120(1)
	addze	0,0
	std	27,-16(10)
	std	29,-8(10)
	bc	16,0,Linner

	fctid	8,8
	fctid	9,9
	ld	24,64(1)
	ld	25,72(1)
	ld	26,80(1)
	ld	27,88(1)
	ld	28,96(1)
	ld	29,104(1)
	ld	30,112(1)
	ld	31,120(1)
	stfd	8,128(1)
	stfd	9,136(1)

	add	24,24,0
	srdi	0,24,16
	add	25,25,0
	srdi	0,25,16
	insrdi	24,25,16,32
	add	26,26,0
	ld	25,8(10)
	srdi	0,26,16
	insrdi	24,26,16,16
	add	27,27,0
	ldu	26,16(10)
	srdi	0,27,16
	insrdi	24,27,16,0
	add	28,28,0
	srdi	0,28,16
	add	29,29,0
	srdi	0,29,16
	insrdi	28,29,16,32
	add	30,30,0
	srdi	0,30,16
	insrdi	28,30,16,16
	add	31,31,0
	insrdi	28,31,16,0
	srdi	0,31,16
	ld	30,128(1)
	ld	31,136(1)

	addc	27,24,25
	adde	29,28,26
	addze	0,0

	std	27,-16(10)
	std	29,-8(10)

	add	0,0,3
	add	30,30,0
	srdi	0,30,16
	add	31,31,0
	insrdi	30,31,48,0
	srdi	3,31,48
	std	30,0(10)
	slwi	31,8,2
	addi	12,12,8
	subf	22,31,22
	cmpw	12,8
	blt-	Louter
	subf	6,8,6
	addi	11,11,1
	subfc	12,12,12
	addi	10,1,200
	addi	28,1,208
	addi	29,6,8
	addi	30,9,8
	mtctr	11

.align	4
Lsub:	ldx	24,10,12
	ldx	25,6,12
	ldx	26,28,12
	ldx	27,29,12
	subfe	24,25,24
	subfe	26,27,26
	stdx	24,9,12
	stdx	26,30,12
	addi	12,12,16
	bc	16,0,Lsub

	li	12,0
	subfe	3,12,3
	mtctr	11

.align	4
Lcopy:
	ldx	24,10,12
	ldx	25,28,12
	ldx	26,9,12
	ldx	27,30,12
	std	12,8(22)
	std	12,16(22)
	std	12,24(22)
	std	12,32(22)
	std	12,40(22)
	std	12,48(22)
	std	12,56(22)
	stdu	12,64(22)
	and	24,24,3
	and	25,25,3
	andc	26,26,3
	andc	27,27,3
	or	24,24,26
	or	25,25,27
	stdx	24,9,12
	stdx	25,30,12
	stdx	12,10,12
	stdx	12,28,12
	addi	12,12,16
	bc	16,0,Lcopy
	ld	12,0(1)
	li	3,1
	ld	19,-200(12)
	ld	20,-192(12)
	ld	21,-184(12)
	ld	22,-176(12)
	ld	23,-168(12)
	ld	24,-160(12)
	ld	25,-152(12)
	ld	26,-144(12)
	ld	27,-136(12)
	ld	28,-128(12)
	ld	29,-120(12)
	ld	30,-112(12)
	ld	31,-104(12)
	lfd	20,-96(12)
	lfd	21,-88(12)
	lfd	22,-80(12)
	lfd	23,-72(12)
	lfd	24,-64(12)
	lfd	25,-56(12)
	lfd	26,-48(12)
	lfd	27,-40(12)
	lfd	28,-32(12)
	lfd	29,-24(12)
	lfd	30,-16(12)
	lfd	31,-8(12)
	mr	1,12
	blr	
.long	0
.byte	0,12,4,0,0x8c,13,6,0
.long	0


.byte	77,111,110,116,103,111,109,101,114,121,32,77,117,108,116,105,112,108,105,99,97,116,105,111,110,32,102,111,114,32,80,80,67,54,52,44,32,67,82,89,80,84,79,71,65,77,83,32,98,121,32,60,97,112,112,114,111,64,111,112,101,110,115,115,108,46,111,114,103,62,0
.align	2
