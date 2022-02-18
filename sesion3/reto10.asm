#-- David Tapiador

#-- Programa para poner un dibujo específico en el monitor de memoria

	.data
#--str:	.asciz "Sesion 3 Ejercicio 10", lo comento para que "inicio" sea la primera
					#-- entrada del campo de datos

#-- Iniciar la variable con la palabra que menciona (primer color azul en memoria)
inicio:	.word 0xAA5555AA

	.text
	
main:
	#-- Cargar la dirección de memoria en el registro x5
	la x5, inicio
	
	#-- Cargar el valor de la variable en el registro x6
	lw x6, 0(x5)
	
	#-- Aumentar 3 casillas en el registro de memoria y ponerle el valor indicado
	addi x5,x5,12
	sw x6, 0(x5)
	
	#-- Aumentar 1 casilla en el registro de memoria y ponerle el valor indicado
	addi x5,x5,4
	sw x6, 0(x5)
	
	#-- Aumentar 3 casillas en el registro de memoria y ponerle el valor indicado
	addi x5,x5,12
	sw x6, 0(x5)
	
	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall
