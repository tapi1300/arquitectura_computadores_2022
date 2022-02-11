#-- David Tapiador

#-- Programa pone valor negativo

	.data
str:	.asciz "Sesion 1 Ejercicio 4"


	.text
	
	#-- Inicializar x6 a 0
	addi x6, x0, 0
	
main:	
	#-- Incrementar el registro x6 en una unidad negativa (resta 1)
	addi x6, x6, -1  #-- x6 = x6 + (-1)

	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall
	
	#-- El valor final de x6 en exadecimal es 0xffffffff
