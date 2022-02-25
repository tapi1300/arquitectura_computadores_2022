#-- David Tapiador

#-- ***calc.s***
#-- Programa que ejecuta la expresión f = a+b-c+30

	#-- Inicio del segmento de datos
	.data

#-- Definicion de variables necesarias para la ejecución del programa con sus valores iniciales
a:	.word 1
b:	.word 2
c:	.word 3
f:	.word 0

	#-- Fin del segmento de datos e inicio del segmento de código
	.text
main:
	#-- Cargar las direcciones de memoria de la variable a en el registro x5
	la x5, a
	
	#-- Cargar los valores de las variables a-c en los registros x6-x8 
	lw x6, 0(x5)	# a
	lw x7, 4(x5)	# b
	lw x8, 8(x5)	# c
	
	#-- Realizar las sumas y restas correspondientes a la expresión del enunciado
	#--	y almacenamos el resultado en la variable f
	add x10, x6, x7		#-- x10 = a+b
	sub x10, x10, x8	#-- x10 = (a+b)-c
	addi x10, x10, 30	#-- x10 = (a+b-c)+30
	
	#-- La variable f está almacenada 12 bytes despues de la variable a, por lo que 
	#--	para ahorrar instrucciones (la x9 f) podemos obtener la dirección de
	#--	memoria de la variable f con 12(x5).
 	sw x10, 12(x5)		#-- x5+12 (variable f) = x10 (resultado de la expresion)
	
	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall

