#-- David Tapiador

#-- Programa para comprobar el funcionamiento de las constantes

	.data
str:	.asciz "Sesion 4 Ejercicio 2"

	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 0xC
	
	.data
tabla:	.word 0xBEBECAFE, 0xFACEB00C, 0x00FABADA, 0xCACABACA
	
	.text
	
	la x5, tabla
	
	lw x10, E1(x5)
	lw x11, E2(x5)
	lw x12, E3(x5)
	lw x13, E4(x5)
	
	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall
	
	#-- **RESPUESTA**
	#-- Se almacena en x10 "0xBEBECAFE", en x11 "0xFACEB00C",
	#--	en x12 "0x00FABADA" y en x12 "0xCACABACA"