#-- David Tapiador

#-- Programa contador (modificado)
#-- El registro x5 se incremeta indefinidamente con valor 2

	.data
str:	.asciz "Sesion 1 Ejercicio 2"


	.text
	
	#-- Inicializar el registro x5 a 0
	addi x5, x0, 0
	
bucle:
	#-- Incrementar el registro x5 en dos unidades
	addi x5, x5, 2  #-- x5 = x5 + 2
	
	#-- Repetir indefinidamente		
	b bucle
