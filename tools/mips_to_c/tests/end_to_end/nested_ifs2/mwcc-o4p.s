.include "macros.inc"

.section .text  # 0x0 - 0x60

.global test
test:
/* 00000000 00000000  7C 08 02 A6 */	mflr r0
/* 00000004 00000004  90 01 00 04 */	stw r0, 4(r1)
/* 00000008 00000008  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 0000000C 0000000C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 00000010 00000010  3B E3 00 00 */	addi r31, r3, 0
/* 00000014 00000014  2C 1F 00 07 */	cmpwi r31, 7
/* 00000018 00000018  40 82 00 28 */	bne .L00000040
/* 0000001C 0000001C  38 60 00 01 */	li r3, 1
/* 00000020 00000020  48 00 00 01 */	bl foo
/* 00000024 00000024  2C 1F 00 08 */	cmpwi r31, 8
/* 00000028 00000028  40 82 00 0C */	bne .L00000034
/* 0000002C 0000002C  38 60 00 02 */	li r3, 2
/* 00000030 00000030  48 00 00 01 */	bl foo
.L00000034:
/* 00000034 00000034  38 60 00 03 */	li r3, 3
/* 00000038 00000038  48 00 00 01 */	bl foo
/* 0000003C 0000003C  48 00 00 0C */	b .L00000048
.L00000040:
/* 00000040 00000040  38 60 00 04 */	li r3, 4
/* 00000044 00000044  48 00 00 01 */	bl foo
.L00000048:
/* 00000048 00000048  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 0000004C 0000004C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 00000050 00000050  38 21 00 18 */	addi r1, r1, 0x18
/* 00000054 00000054  7C 08 03 A6 */	mtlr r0
/* 00000058 00000058  4E 80 00 20 */	blr 

.global foo
foo:
/* 0000005C 0000005C  4E 80 00 20 */	blr 

