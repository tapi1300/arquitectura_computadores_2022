#-- David Tapiador

#-- Programa para sumar dos numeros dados por el usuario

	.data
str:	.asciz "Sesion 5 Ejercicio 2"

	#-- Servicios incluidos
	.include "servicios.asm"
	
	.text
main:
	#-- Pedir un numero y guardarlo en t0
	li a7, READ_INT
	ecall
	mv t0, a0
	
	#-- Pedir un numero y guardarlo en t1
	li a7, READ_INT
	ecall
	mv t1, a0
	
	#-- Sumar ambos numeros y guardarlo en a0
	add a0,t0,t1
	
	#-- Imprimir el numero guardado en a0
	li a7, PRINT_INT
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
