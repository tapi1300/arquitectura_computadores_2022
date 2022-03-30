#-- David Tapiador

#-- Programa para que pide un numero al usuario y lo muestra por el puerto de salida

	.data
str:	.asciz "Sesion 5 Ejercicio 8"

	#-- Servicios incluidos
	.include "servicios.asm"
	
fib0:	.word 0
fib1:	.word 1

	.text
init_conf:
	#-- Cargar las direcciones de memoria de las variables fib0 y fib1 en los
	#--	registros x5 y x6
	la t0, fib0

bucle_fib:
	#-- Cargar los valores de las variables fib0 y fib1 en los registros x10 y x11
 	lw t1, 0(t0)
	lw t2, 4(t0)
	
	#-- Sumar los registros x10 y x11 en el registro x12
	add t3, t1, t2
	
	#-- Guardar la suma en a0 e imprimirlo en la consola
	mv a0, t3
	li a7, PRINT_INT
	ecall
	
	#-- Imprimir una A, usando su codigo ASCII
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	
	#-- Guardar en las variables fib0 y fib1 los valores de la sucesión para la siguiente vuelta del bucle
	sw t2, 0(t0)
	sw t3, 4(t0)
	
	
	
	#-- Repetición del bucle
	b bucle_fib

