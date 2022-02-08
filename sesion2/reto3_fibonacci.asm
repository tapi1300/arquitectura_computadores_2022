#-- David Tapiador

#-- Programa para calcular la sucesion de Fibonacci

	.data
str:	.asciz "Sesion 2 Ejercicio 3"

	.text

	#-- Inicializamos los registros x5,x6,x7 a 0
	addi x5, x0, 0
	addi x6, x0, 1
	addi x7, x0, 0	#-- No es necesario

	#-- Bucle principal
completo:
	
	#-- Sumamos los valores en x7
	add x7, x5, x6
	
	#-- Actualizamos x5 y x6 a los valores de la siguiente iteración
	add x5, x0, x6
	add x6, x0, x7
	
	#-- Repetir el bucle
	b completo

