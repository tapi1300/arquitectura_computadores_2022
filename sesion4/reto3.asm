#-- David Tapiador

#-- Programa para sumar de forma infinita con variables y constantes

	.data
str:	.asciz "Sesion 4 Ejercicio 3"

	.eqv INC 1

	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 0xC
	
	.data
tabla:	.word 0xBEBECAFE, 0xFACEB00C, 0x00FABADA, 0xCACABACA
	
	.text
	
	la x5, tabla
	
	lw x10, E1(x5)
	lw x11, E2(x5)
	lw x12, E3(x5)
	lw x13, E4(x5)
	
	#-- Aumentar el valor de la tabla con el valor de la constante
	addi x10,x10,INC
	#-- Guardar el valor aumentado en la dirección de memoria de la tabla
	sw x10, E1(x5)
	
	#-- Hacer lo mismo con el resto de valores de la tabla
	addi x11,x11,INC
	sw x11, E2(x5)
	addi x12,x12,INC
	sw x12, E3(x5)
	addi x13,x13,INC
	sw x13, E4(x5)
	
	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall