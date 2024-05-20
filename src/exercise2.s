.psx
.create "exercise2.bin", 0x80010000 

.org 0x80010000 

BASE_ADDR equ 0x0000

Main:
    li $t0, 0x001
    li $t1, 0x0


Loop:
    addi $t0, $t0, 1
    add $t1, $t1, $t0
    blt $t0, 10, Loop
    nop


End:

.close


