#-- David Tapiador

#-- Programa para poner un "0","1","2","3","4","5","6","7","8" y "9" en el led en bucle

	.data
str:	.asciz "Sesion 4 Ejercicio 8"

	#--- Direccion donde está mapeado el display derecho
	.eqv DISP_R 0xFFFF0010
	
	#-- Valor a sacar por el puerto del display
	#.eqv VALOR 63	#-- Number 0 (0x3f)
	#.eqv VALOR 6	#-- Number 1 (0x06)
	#.eqv VALOR 91	#-- Number 2 (0x5b)
	#.eqv VALOR 79	#-- Number 3 (0x4f)
	#.eqv VALOR 102	#-- Number 4 (0x66)
	#.eqv VALOR 109	#-- Number 5 (0x6d)
	#.eqv VALOR 125	#-- Number 6 (0x7d)
	#.eqv VALOR 7	#-- Number 7 (0x07)
	#.eqv VALOR 127	#-- Number 8 (0x7f)
	#.eqv VALOR 103	#-- Number 9 (0x67)
	
	#-- Todos los digitos almacenados como constantes
	.eqv DIG0 0x3f
	.eqv DIG1 0x06
	.eqv DIG2 0x5b
	.eqv DIG3 0x4f
	.eqv DIG4 0x66
	.eqv DIG5 0x6d
	.eqv DIG6 0x7d
	.eqv DIG7 0x07
	.eqv DIG8 0x7f
	.eqv DIG9 0x67
	
	#-- Tabla con todos los digitos 0-9
tabla:	.word DIG0, DIG1, DIG2, DIG3, DIG4, DIG5, DIG6, DIG7, DIG8, DIG9
	
	#-- Tamaño que ocupa un digito en la tabla
	.eqv COUNTER 4
	#-- Numero de posiciones en la tabla
	.eqv SIZE_TABLA 10
	
	
	.text
set_limit:
	#-- Usamos el regitro x5 como puntero de acceso al puerto
	#-- Cargamos en x5 la direccion de memoria del puerto
	li x5, DISP_R

	#-- Cargar la dirección de memoria del array "tabla"
	la x6, tabla

	#-- Almacenar en x8 cuál es la última posicion de la tabla
	#-- Guardar cuántas posiciones ocupa un dato en la tabla en x8
	addi x8, x0, COUNTER
	#-- Guardar el tamaño de la tabla en x8
	addi x9, x0, SIZE_TABLA
	#-- Multiplicar el numero de posiciones por cuánto ocupa cada posición
	mul x8, x8, x9
	#-- Sumar el tamaño en bytes de la tabla a la posición inicial de la tabla
	#--	para obtener la tabla final
	add x8, x8, x6
	
	#-- Ir a bucle (no volver a guardar tabla en x6)
	jal bucle
	
load_tabla:
	
	#-- Cargar la dirección de memoria del array "tabla"
	la x6, tabla


bucle:
	#-- Cargar el dato correspondiente de la tabla
	lw x7, 0(x6)
	#-- Guardar ese dato en la memoria del puerto
	sw x7, 0(x5)
	#-- Aumentar la posición de la tabla
	addi x6, x6, COUNTER
	#-- Si ha llegado al último valor de la tabla, reseteamos la tabla
	beq x6, x8, load_tabla
	
	#-- Vuelta al bucle
	b bucle
