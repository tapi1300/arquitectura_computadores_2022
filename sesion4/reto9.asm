#-- David Tapiador

#-- Programa para poner un "0","1","2","3","4","5","6","7","8" y "9" en el led
#--	de forma inversa y en bucle

	.data
str:	.asciz "Sesion 4 Ejercicio 9"

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
	
	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 12
	.eqv E5 16
	.eqv E6 20
	.eqv E7 24
	.eqv E8 28
	.eqv E9 32
	.eqv E10 36

tabla:	.word DIG9, DIG8, DIG7, DIG6, DIG5, DIG4, DIG3, DIG2, DIG1, DIG0
	
	
	
	.text
main:
	#-- Usamos el regitro x5 como puntero de acceso al puerto
	#-- Cargamos en x5 la direccion de memoria del puerto
	li x5, DISP_R
	
	#-- Cargar la dirección de memoria del array "tabla"
	la x6, tabla

bucle:
	#-- Cargar el primervalor de tabla para sacarlo por el Display
	lw x7, E1(x6)
	
	#-- Sacar el valor por el puerto, para que se iluminen
	#-- 	los segmentos del display
	sw x7, 0(x5)
	
	#-- Repetir con el resto de valores
	lw x7, E2(x6)
	sw x7, 0(x5)
	lw x7, E3(x6)
	sw x7, 0(x5)
	lw x7, E4(x6)
	sw x7, 0(x5)
	lw x7, E5(x6)
	sw x7, 0(x5)
	lw x7, E6(x6)
	sw x7, 0(x5)
	lw x7, E7(x6)
	sw x7, 0(x5)
	lw x7, E8(x6)
	sw x7, 0(x5)
	lw x7, E9(x6)
	sw x7, 0(x5)
	lw x7, E10(x6)
	sw x7, 0(x5)
	
	
	b bucle

