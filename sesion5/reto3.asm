#-- David Tapiador

#-- Programa para sumar dos numeros dados por el usuario con variables

	.data
str:	.asciz "Sesion 5 Ejercicio 3"

	#-- Servicios incluidos
	.include "servicios.asm"	
	
#-- Definir las variables a y b
a:	.word 0
b:	.word 0
	
	.text
main:
	#-- Pedir un numero y guardarlo en "a"
	li a7, READ_INT
	ecall
	la t0, a
	sw a0, 0(t0)
	
	#-- Pedir un numero y guardarlo en "b"
	li a7, READ_INT
	ecall
	la t1, b
	sw a0, 0(t1)
	
	#-- Sumar ambos numeros y guardarlo en a0
	lw t0, 0(t0)
	lw t1, 0(t1)
	add a0,t0,t1
	
	#-- Imprimir el numero guardado en a0
	li a7, PRINT_INT
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
