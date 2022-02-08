#-- David Tapiador

#-- Programa para calcular la expresión planteada:
#-- 	f = (d - c) + 15 - (a + b)

	.data
str:	.asciz "Sesion 2 Ejercicio 10"

	.text

	#-- Inicializamos los registros x5 - x12 a 0
	#-- Parametros del programa
	addi x5, x0, 1
	addi x6, x0, 2
	addi x7, x0, 3
	addi x8, x0, 4
	#-- Memoria temporal
	addi x9, x0, 0
	addi x10, x0, 0
	#-- Resultado final
	addi x11, x0, 0
	
bucle:
	sub x9, x8, x7		#-- temp1 = d - c
	addi x9, x9, 15		#-- temp1 = (d - c) + 15
				#-- realmente es -> temp1 = temp1 + 15
	add x10, x5, x6		#-- temp2 = a + b
	sub x11, x9, x10	#-- f = (d - c + 15) - (a + b)
				#-- realmente es -> f = temp1 - temp2
	
				
	
	#-- Actualizar variables para siguiente bucle
	addi x5, x5, 1
	addi x6, x6, 2
	addi x7, x7, 3
	addi x8, x8, 4
	
	#-- Repetir el bucle
	b bucle