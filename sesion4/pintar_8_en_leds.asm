#-- David Tapiador

#-- Programa para poner un "8." en el led (he añadido todos los numeros

	.data
str:	.asciz "Sesion 4"

	#--- Direccion donde está mapeado el display derecho
	.eqv DISP_R 0xFFFF0010
	
	#-- Valor a sacar por el puerto del display
	#-- Para encender todos los segmentos debe ser 0xFF
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
	
	.eqv VALOR 255	#-- Number 8. (0xff)
	
	.text
main:
	#-- Usamos el regitro x5 como puntero de acceso al puerto
	#-- Cargamos en x5 la direccion de memoria del puerto
	li x5, DISP_R
	
	#-- Cargar el valor a sacar por el Display
	li x6, VALOR
	
	#-- Sacar el valor por el puerto, para que se iluminen
	#-- los segmentos del display
	sw x6, 0(x5)
	
	#-- Ya no hacemos nada mas
	#-- Terminamos con un bucle infinito (porque en el RISC-V de la FPGA
	#-- no hay un Sistema operativo)	
stop:   b stop

