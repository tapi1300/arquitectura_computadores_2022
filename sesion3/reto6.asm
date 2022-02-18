#-- David Tapiador

#-- **VARDIS3**
#-- Programa para probar la definición de variables y cargar sus direcciones de memoria

	.data
str:	.asciz "Sesion 3 Ejercicio 6"

#-- Definir variables con valor 1-4
a:	.word 1
b:	.word 2
c:	.word 3
d:	.word 4


	.text
main:
	#-- Cargar la dirección de memoria de la variable "a" en el registro x5
	#--	y almacenar los valores de todas las variables a-d en los registros
	#--	x10-x13
	la x5, a
	lw x10, 0(x5)
	lw x11, 4(x5)
	lw x12, 8(x5)
	lw x13, 12(x5)
	
	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall