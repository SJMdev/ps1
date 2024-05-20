.psx
.create "exercise1.bin", 0x80010000 

.org 0x80010000 

BASE_ADDR equ 0x0000

Main:
    li $t0, 0x001
    li $t1, 0x100
    li $t2, 0x011

End:

.close


