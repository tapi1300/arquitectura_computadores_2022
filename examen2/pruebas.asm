#-- David Tapiador

#-- Programa para probar cosas
	.include "servicios.asm"
        .data
ca:  .string "123456789"

       .text
	la a0, ca
	addi a0, a0, 3
	li a1, 'A'
	sb a1, 1(a0)