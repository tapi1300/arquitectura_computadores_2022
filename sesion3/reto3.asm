#-- David Tapiador

#-- **VARIABLES4**
#-- Programa para probar la definición de variables

	.data
str:	.asciz "Sesion 3 Ejercicio 3"

#-- Definir variables con los valores del enunciado
v1:	.word 0x12345678
v2:	.word 0x11223344
v3:	.word 0xCACABACA
v4:	.word 0x00FABADA


main:
	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall