.psx
.create "factorial.bin", 0x80010000 

.org 0x80010000 

BASE_ADDR equ 0x0000

Main:
    li $t0, 6
    jal Factorial
    nop
    j End


Factorial:
    li $t1, 1
    li $t2, 1
Loop:
    bgt $t2, $t0, EndLoop
    nop
    mult $t1, $t2
    mfhi $t1
    mflo $t1
    addi $t2, $t2, 1
    j Loop
    nop
EndLoop:
    jr $ra ;return from the subroutine

End:
.close


