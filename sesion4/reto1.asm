#-- David Tapiador

#-- Programa para sumar de forma infinita con variables y constantes

	.data
str:	.asciz "Sesion 4 Ejercicio 1"
#-- Definir la variable de inicio del contador
INICIO:	.word 100

	#-- Definir constante para sumar en cada vuelta del contador 
	.eqv INC 10

	.text
main:
	#-- Cargar la direccion de memoria de la variable en x5
	la x5, INICIO
	
	#-- Cargar el valor de la variable en x5
	lw x5, 0(x5)
bucle:
	#-- Aumentar el valor del contador (x5) con el valor de la constante INC
	addi x5, x5, INC
	
	#-- Vuelta al bucle
	b bucle
