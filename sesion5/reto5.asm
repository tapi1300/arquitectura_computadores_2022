#-- David Tapiador

#-- Programa para que pide un numero al usuario y lo muestra por el puerto de salida

	.data
str:	.asciz "Sesion 5 Ejercicio 5"

	#--- Direccion donde está mapeado el display derecho
	.eqv DISP_R 0xFFFF0010

	#-- Servicios incluidos
	.include "servicios.asm"
	
	.text
main:
	#-- Pedir un numero
	li a7, READ_INT
	ecall

	#-- Usamos el registro t0 como puntero de acceso al puerto
	#-- Cargamos en t0 la direccion de memoria del puerto
	li t0, DISP_R
	
	#-- Sacar el valor por el puerto, para que se iluminen
	#-- los segmentos del display
	sw a0, 0(t0)
	
	#-- Ya no hacemos nada mas
	#-- Terminamos con un bucle infinito (porque en el RISC-V de la FPGA
	#-- no hay un Sistema operativo)	
stop:   b stop

