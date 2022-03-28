#-- David Tapiador

#-- Programa para sumar dos numeros dados por el usuario

	.data
str:	.asciz "Sesion 5 Ejercicio 2"

	#-- Servicio imprimir int
	.eqv PRINT_INT 1	#-- float-2, double-3, string-4, char-11
	#-- Servicio leer int
	.eqv READ_INT 5		#-- float-6, double-7, string-8, char-12
	#-- Servicio exit
	.eqv EXIT 10
	
	.text
main:
	#-- Pedir un numero y guardarlo en t0
	li a7, READ_INT
	ecall
	mv t0, a0
	
	#-- Pedir un numero y guardarlo en t1
	li a7, READ_INT
	ecall
	mv t1, a0
	
	#-- Sumar ambos numeros y guardarlo en a0
	add a0,t0,t1
	
	#-- Imprimir el numero guardado en a0
	li a7, PRINT_INT
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall