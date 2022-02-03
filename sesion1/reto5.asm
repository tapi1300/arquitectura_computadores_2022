#-- David Tapiador

#-- Programa para averiguar qué hace

	.data
str:	.asciz "Sesion 1 Ejercicio 5"

	
	.text
	
	addi x3, x0, 10
a:
	addi x3,x3,-1
	bgt x3,x0, a
	
	li a7, 10
	ecall
	
	#-- Este programa se queda en bulce en "a" hasta que el valor
	#--	de x3 es menor que 0, entonces sale con éxito.