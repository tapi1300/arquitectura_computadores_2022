#-- David Tapiador

#-- Programa para calcular la expresión planteada:
#-- 	f = (a + b + c) - [(d - a) + (e + 3) - 30]

	.data
str:	.asciz "Sesion 2 Ejercicio 4"

	.text

	#-- Inicializamos los registros x5 - x12 a 0
	#-- Parametros del programa
	addi x5, x0, 2
	addi x6, x0, 4
	addi x7, x0, 6
	addi x8, x0, 8
	addi x9, x0, 10
	#-- Resultado final
	addi x10, x0, 0
	
main:
	add x6, x5, x6		#-- b = a + b
	add x6, x6, x7		#-- b = (a + b) + c
	
	sub x8, x8, x5		#-- d = d - a
	addi x9, x9, 3		#-- e = e + 3
	add x8, x8, x9		#-- d = (d - a) + (e + 3)
	addi x8, x8, -30	#-- d = (d - a + e + 3) + (-30)
				
	sub x10, x6, x8		#-- f = (a + b) + c(d - a) + e + 3
	
