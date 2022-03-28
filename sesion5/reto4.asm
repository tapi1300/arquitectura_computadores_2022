#-- David Tapiador

#-- Programa para calcular la expresión (f = (2*a -b) + c - 1) con a,b y c dados por el usuario

	.data
str:	.asciz "Sesion 5 Ejercicio 4"

	#-- Servicio imprimir int
	.eqv PRINT_INT 1	#-- float-2, double-3, string-4, char-11
	#-- Servicio leer int
	.eqv READ_INT 5		#-- float-6, double-7, string-8, char-12
	#-- Servicio exit
	.eqv EXIT 10
	
#-- Definir las variables a,b,c y f
f:	.word 0
a:	.word 0
b:	.word 0
c:	.word 0
	
	.text
main:
	la t0, f
	#-- Pedir un numero y guardarlo en "a"
	li a7, READ_INT
	ecall
	sw a0, 4(t0)
	
	#-- Pedir un numero y guardarlo en "b"
	li a7, READ_INT
	ecall
	sw a0, 8(t0)
	
	#-- Pedir un numero y guardarlo en "c"
	li a7, READ_INT
	ecall
	sw a0, 12(t0)
	
	
	#-- Cargar la dirección de memoria de F
	lw t1, 4(t0)
	lw t2, 8(t0)
	lw t3, 12(t0)
	
	
	#-- Calcular la expresión (f = (2*a -b) + c - 1)
	#-- Cargar valores para 2*a
	li t4, 2
	#-- Multiplicar 2*a
	mul t1,t1,t4
	
	#-- Restar b, sumar c y restar 1.
	sub t1,t1, t2
	add t1,t1, t3
	addi t1,t1, -1
	
	#-- Guargar el resultado en memoria (variable f)
	sw t1, 0(t0)
	
	#-- Poner el resultado en a0 para imprimirlo
	lw a0, 0(t0)
	#-- Imprimir el numero guardado en a0
	li a7, PRINT_INT
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
	
	