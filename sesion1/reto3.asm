#-- David Tapiador

#-- Programa contador (modificado)
#-- El registro x3 se incremeta indefinidamente con valor 1
#-- El registro x4 se incremeta indefinidamente con valor 3
#-- El registro x5 se incremeta indefinidamente con valor 5

	.data
str:	.asciz "Sesion 1 Ejercicio 3"


	.text
	
	#-- Inicializar los registros x3,x4 y x5 a 0
	addi x3, x0, 0
	addi x4, x0, 0
	addi x5, x0, 0
	
bucle:
	#-- Incrementar el registro x3 en una unidad
	addi x3, x3, 1  #-- x3 = x3 + 1
	#-- Incrementar el registro x4 en tres unidades
	addi x4, x4, 3  #-- x4 = x4 + 3
	#-- Incrementar el registro x5 en cinco unidades
	addi x5, x5, 5  #-- x5 = x5 + 5
	
	#-- Repetir indefinidamente		
	b bucle
