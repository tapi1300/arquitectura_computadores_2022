#-- David Tapiador

#-- Examen 1-abril-2022

#-- Cifrar una cadena
#-- El cifrado es simple: Se suma una constante (que aumenta en 1 cada para cada caracter)
#--	a cada caracter

	#-- Tamaño máximo de la cadena
	.eqv MAX 1024

	#-- Servicios del sistema para imprimir un string, leer un string introducido por el usuario
	#--	y salir del programa, respectivamente.
	.eqv PRINT_STRING 4
	.eqv READ_STRING  8
	.eqv EXIT         10

	.data 
cad:	.space MAX	
msg1:	.string "Introduce cadena: "
msg2:	.string "Cadena cifrada: "
	
	
	.text 
	
	#-- Imprimir mensaje msg1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir cadena al usuario
	#-- Inicializar el puntero de cadena (para que apunte a la
	#--	cadena introducida por el usuario).
	#-- Este paso se completa
	#--	directamente aquí, ya que en a0 tenemos guardadala dirección
	#--	del primer byte de la cadena del usuario.
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Inicializar la clave (valor inicial de 1, aumenta en cada vuelta del bucle)
	li t1, 1
	
	#-- Caracter de finalización
	li t2, '\n'

bucle:
	#-- Leer el caracter actual
	lb t0, 0(a0)
	
	#-- Si este caracter es '\n', terminar
	beq t0, t2, fin
	
	#-- Sumar la clave al caracter actual
	add t0, t0, t1
	
	#-- Guardar el carácter cifrado en la posición actual
	sb t0, 0(a0)
	
	#-- Incrementar el puntero de cadena
	addi a0, a0, 1
	
	#-- Incrementar la clave en una unidad
	addi t1, t1, 1
	
	#-- Repetir
	b bucle

	
fin:    #-- Hemos terminado
	#-- Imprimir el mensaje 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir la cadena cifrada
	la a0, cad
	li a7, PRINT_STRING
	ecall			
			
	#-- Terminar
	li a7, EXIT
	ecall