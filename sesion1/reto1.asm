#-- David Tapiador

#-- Establecer valores en memoria

	.data
str:	.asciz "Sesion 1 Ejercicio 1"

	.text

main:	
	li x3, 3
	li x4, 4
	li x5, 5
	li x6, 6
	li x7, 7
	li x8, 8

	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall


