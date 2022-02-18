#-- David Tapiador

#-- Programa para poner una sonrisa "=)" en el monitor de memoria

	.data
#--str:	.asciz "Sesion 3 Ejercicio 11", lo comento para que "inicio" sea la primera
					#-- entrada del campo de datos

#-- Variable para acceder al primer punto de la memoria
inicio:

	.text
main:
	#-- Cargar la dirección de memoria en el registro x5
	la x5, inicio
	
	#-- Ajustarse a la primera casilla que queremos dibujar, segunda linea (64)
	#--	tercera casilla (8) en el registro de memoria y ponerlo de verde
	addi x5,x5,72
	jal pintar
	
	#-- Segunda parte de la segunda linea (dos casillas a la derecha)
	addi x5,x5,8
	jal pintar

	#-- Pintar otra vez lo mismo que en la segunda linea pero en la tercera linea,
	#--	bajar una linea (64), dos casillas a la izquierda (-8)
	addi x5,x5,56
	jal pintar
	
	#-- Segunda parte de la tercera linea (dos casillas a la derecha)
	addi x5,x5,8
	jal pintar
	
	#-- Pintar la primera linea de la boca (quinta linea), es decir, bajar dos
	#--	lineas (128), tres casillas a la izquierda (-12)
	addi x5,x5,116
	jal pintar
	
	#-- Segunda parte de la quinta linea (cuatro casillas a la derecha, 16)
	addi x5,x5,16
	jal pintar
	
	#-- Pintar la segunda linea de la boca (sexta linea), es decir, bajar una
	#--	linea (64), tres casillas a la izquierda (-12)
	addi x5,x5,52
	jal pintar

	#-- Pintar las dos ultimas casillas de la sexta linea, es decir,
	#--	una casilla a la derecha, pintar, otra casilla a la derecha
	#--	y pintar por última vez
	addi x5,x5,4
	jal pintar
	addi x5,x5,4
	jal pintar
	
	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall

pintar:
	sw x0, 0(x5)
	sw x0, 0(x5)
	ret

