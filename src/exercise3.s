.psx
.create "exercise3.bin", 0x80010000 

.org 0x80010000 

BASE_ADDR equ 0x0000

Main:
    li $t0, 0x01B
    li $t1, 0x003
    li $t2, 0x0

Loop:
    addi $t2, $t2, 1
    sub $t0, $t0, $t1
    bge $t0, $t1, Loop
    nop

End:
.close


