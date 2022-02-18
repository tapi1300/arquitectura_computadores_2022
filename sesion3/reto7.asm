#-- David Tapiador

#-- **EXPRESION**
#-- Programa que ejecuta la expresión f = (a+b+c)-(d-3)

	.data
str:	.asciz "Sesion 3 Ejercicio 7"

a:	.word -5
b:	.word 2
c:	.word 30
d:	.word 5
f:	.word 0

	.text
main:
	#-- Cargar las direcciones de memoria de la variable a en el registro x5
	la x5, a
	la x11, f
	
	#-- Cargar los valores de las variables a-d en los registros x6-x9 
	lw x6, 0(x5)
	lw x7, 4(x5)
	lw x8, 8(x5)
	lw x9, 12(x5)
	
	#-- Realizar las sumas y restas correspondientes a la expresión del enunciado
	#--	y almacenarlo en la variable f
	add x10, x6, x7		#-- x10 = a+b
	add x10, x10, x8	#-- x10 = (a+b)+c
	sub x10, x10, x9	#-- x10 = (a+b+c)-d
	addi x10, x10, 3	#-- x10 = (a+b+c-d)+3
	sw x10, 0(x11)		#-- x11 (variable f) = x10 (resultado de la expresion)
	
	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall