#-- David Tapiador

#-- Programa para probar cosas
	.include "servicios.asm"
	.data
str:	.asciz "Probador oficial"

	.text
main:

	#-- Llamada al sistema para salir del programa
	li a7, EXIT
	ecall