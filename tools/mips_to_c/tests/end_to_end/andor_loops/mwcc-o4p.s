.include "macros.inc"

.section .text  # 0x0 - 0xf8

.global test
test:
/* 00000000 00000000  38 E0 00 00 */	li r7, 0
/* 00000004 00000004  48 00 00 08 */	b .L0000000C
.L00000008:
/* 00000008 00000008  38 E7 00 01 */	addi r7, r7, 1
.L0000000C:
/* 0000000C 0000000C  2C 03 00 00 */	cmpwi r3, 0
/* 00000010 00000010  41 82 00 1C */	beq .L0000002C
/* 00000014 00000014  2C 04 00 00 */	cmpwi r4, 0
/* 00000018 00000018  40 82 FF F0 */	bne .L00000008
/* 0000001C 0000001C  2C 05 00 00 */	cmpwi r5, 0
/* 00000020 00000020  40 82 FF E8 */	bne .L00000008
/* 00000024 00000024  48 00 00 08 */	b .L0000002C
.L00000028:
/* 00000028 00000028  38 E7 00 01 */	addi r7, r7, 1
.L0000002C:
/* 0000002C 0000002C  2C 03 00 00 */	cmpwi r3, 0
/* 00000030 00000030  40 82 FF F8 */	bne .L00000028
/* 00000034 00000034  2C 04 00 00 */	cmpwi r4, 0
/* 00000038 00000038  41 82 00 84 */	beq .L000000BC
/* 0000003C 0000003C  2C 05 00 00 */	cmpwi r5, 0
/* 00000040 00000040  40 82 FF E8 */	bne .L00000028
/* 00000044 00000044  48 00 00 78 */	b .L000000BC
.L00000048:
/* 00000048 00000048  2C 04 00 00 */	cmpwi r4, 0
/* 0000004C 0000004C  38 E7 00 01 */	addi r7, r7, 1
/* 00000050 00000050  41 82 00 14 */	beq .L00000064
/* 00000054 00000054  2C 05 00 00 */	cmpwi r5, 0
/* 00000058 00000058  40 82 00 64 */	bne .L000000BC
/* 0000005C 0000005C  2C 06 00 00 */	cmpwi r6, 0
/* 00000060 00000060  40 82 00 5C */	bne .L000000BC
.L00000064:
/* 00000064 00000064  2C 04 00 00 */	cmpwi r4, 0
/* 00000068 00000068  38 E7 00 01 */	addi r7, r7, 1
/* 0000006C 0000006C  40 82 00 50 */	bne .L000000BC
/* 00000070 00000070  2C 05 00 00 */	cmpwi r5, 0
/* 00000074 00000074  41 82 00 0C */	beq .L00000080
/* 00000078 00000078  2C 06 00 00 */	cmpwi r6, 0
/* 0000007C 0000007C  40 82 00 40 */	bne .L000000BC
.L00000080:
/* 00000080 00000080  2C 04 00 00 */	cmpwi r4, 0
/* 00000084 00000084  38 E7 00 01 */	addi r7, r7, 1
/* 00000088 00000088  41 82 00 14 */	beq .L0000009C
/* 0000008C 0000008C  2C 05 00 00 */	cmpwi r5, 0
/* 00000090 00000090  40 82 00 34 */	bne .L000000C4
/* 00000094 00000094  2C 06 00 00 */	cmpwi r6, 0
/* 00000098 00000098  40 82 00 2C */	bne .L000000C4
.L0000009C:
/* 0000009C 0000009C  2C 04 00 00 */	cmpwi r4, 0
/* 000000A0 000000A0  38 E7 00 01 */	addi r7, r7, 1
/* 000000A4 000000A4  40 82 00 20 */	bne .L000000C4
/* 000000A8 000000A8  2C 05 00 00 */	cmpwi r5, 0
/* 000000AC 000000AC  41 82 00 0C */	beq .L000000B8
/* 000000B0 000000B0  2C 06 00 00 */	cmpwi r6, 0
/* 000000B4 000000B4  40 82 00 10 */	bne .L000000C4
.L000000B8:
/* 000000B8 000000B8  38 E7 00 01 */	addi r7, r7, 1
.L000000BC:
/* 000000BC 000000BC  2C 03 00 00 */	cmpwi r3, 0
/* 000000C0 000000C0  40 82 FF 88 */	bne .L00000048
.L000000C4:
/* 000000C4 000000C4  7C 05 32 14 */	add r0, r5, r6
/* 000000C8 000000C8  38 A0 00 00 */	li r5, 0
/* 000000CC 000000CC  48 00 00 0C */	b .L000000D8
.L000000D0:
/* 000000D0 000000D0  7C A5 02 14 */	add r5, r5, r0
/* 000000D4 000000D4  38 E7 00 01 */	addi r7, r7, 1
.L000000D8:
/* 000000D8 000000D8  2C 05 00 0A */	cmpwi r5, 0xa
/* 000000DC 000000DC  40 80 00 14 */	bge .L000000F0
/* 000000E0 000000E0  2C 03 00 00 */	cmpwi r3, 0
/* 000000E4 000000E4  40 82 FF EC */	bne .L000000D0
/* 000000E8 000000E8  2C 04 00 00 */	cmpwi r4, 0
/* 000000EC 000000EC  40 82 FF E4 */	bne .L000000D0
.L000000F0:
/* 000000F0 000000F0  7C E3 3B 78 */	mr r3, r7
/* 000000F4 000000F4  4E 80 00 20 */	blr 

