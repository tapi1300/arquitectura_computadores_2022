#-- David Tapiador

#-- Programa para encender los LEDS con los valores del contador

	.data
str:	.asciz "Sesion 4 Ejercicio 4"

#-- Definir la variable de inicio del contador
INICIO:	.word 100

	#-- Definir constante para sumar en cada vuelta del contador 
	.eqv INC 10

	#--- Direccion donde está mapeado el display derecho
	.eqv DISP_R 0xFFFF0010

	.text
main:
	#-- Cargar la direccion de memoria de la variable en x5
	la x5, INICIO
	
	#-- Cargar el valor de la variable en x5
	lw x5, 0(x5)
	
	
	#-- Usamos el regitro x5 como puntero de acceso al puerto
	#-- Cargamos en x5 la direccion de memoria del puerto
	li x6, DISP_R


bucle:
	#-- Aumentar el valor del contador (x5) con el valor de la constante INC
	addi x5, x5, INC
	
	#-- Sacar el valor por el puerto, para que se iluminen
	#-- los segmentos del display
	sw x5, 0(x6)
	
	#-- Vuelta al bucle
	b bucle
