#-- David Tapiador

#-- **VARDIS2**
#-- Programa para probar la definición de variables y cargar sus direcciones de memoria

	.data
str:	.asciz "Sesion 3 Ejercicio 5"

#-- Definir variables con valor 1-4
a:	.word 1
b:	.word 2
c:	.word 3
d:	.word 4


	.text
main:
	#-- Cargar la dirección de memoria de las variables a-d en los registros x5-x8
	#--	y almacenar los valores de todas las variables a-d en los registros
	#--	x10-x13
	la x5, a
	la x6, b
	la x7, c
	la x8, d
	lw x10, 0(x5)
	lw x11, 0(x6)
	lw x12, 0(x7)
	lw x13, 0(x8)
	
	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall