#-- David Tapiador

#-- **FIBONACCI CON VARIABLES**
#-- Programa para ejecutar la sucesion de fibonacci guardando los valores en variables

	.data
str:	.asciz "Sesion 3 Ejercicio 8"
	
fib0:	.word 0
fib1:	.word 1	

	.text
init_conf:
	#-- Cargar las direcciones de memoria de las variables fib0 y fib1 en los
	#--	registros x5 y x6
	la x5, fib0
	la x6, fib1 

bucle_fib:
	#-- Cargar los valores de las variables fib0 y fib1 en los registros x10 y x11
 	lw x10, 0(x5)
	lw x11, 0(x6)
	
	#-- Sumar los registros x10 y x11 en el registro x12
	add x12, x10, x11
	
	#-- Guardar en las variables fib0 y fib1 los valores de la sucesión para la siguiente vuelta del bucle
	sw x11, 0(x5)
	sw x12, 0(x6)
	
	#-- Repetición del bucle
	b bucle_fib