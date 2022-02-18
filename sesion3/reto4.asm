#-- David Tapiador

#-- **VARDIS**
#-- Programa para probar la definición de variables y cargar sus direcciones de memoria

	.data
str:	.asciz "Sesion 3 Ejercicio 4"

#-- Definir variables con valor 0
a:	.word 0
b:	.word 0
c:	.word 0
d:	.word 0

	.text
main:
	#-- Cargar en x5-x8 las direcciones de memoria de a-d
	la x5, a
	la x6, b
	la x7, c
	la x8, d
	
	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall