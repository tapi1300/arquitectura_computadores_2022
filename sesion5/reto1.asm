#-- David Tapiador

#-- Programa para calcular la expresión (f = (2*a -b) + c - 1)

	.data
str:	.asciz "Sesion 5 Ejercicio 1"

	
	#-- Servicio Exit
	.eqv EXIT 10
	
	#-- Definicion de constantes (A - C) y variable final (F).
	#-- Les pongo la barrabaja porque "B" no se puede definir (existe la instrucción "b")
	.eqv A_ 10
	.eqv B_ 20
	.eqv C_ 30
F: 	.word 0

	.text
main:
	#-- Cargar la dirección de memoria de F
	la t0, F
	
	#-- Calcular la expresión (f = (2*a -b) + c - 1)
	#-- Cargar valores para 2*a
	li t1, 2
	li t2, A_
	#-- Multiplicar 2*a
	mul t1,t1,t2
	
	#-- Restar b, sumar c y restar 1.
	addi t1,t1, -B_
	addi t1,t1, C_
	addi t1,t1, -1
	
	#-- Guardar el valor final en la posición de memoria de la variable F
	sw t1, 0(t0)
	

	#-- Terminar
	li a7, EXIT
	ecall