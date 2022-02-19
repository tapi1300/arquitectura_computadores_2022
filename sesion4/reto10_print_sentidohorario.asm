#-- David Tapiador

#-- Programa para encender un segmento del LED cada vez, creando un flujo
#--	en sentido horario

	.data
str:	.asciz "Sesion 4 Ejercicio 10"

	#--- Direccion donde está mapeado el display derecho
	.eqv DISP_R 0xFFFF0010
	
	#-- Constantes que equivalen a cada una de las lineas del LED
	.eqv LINE1 1
	.eqv LINE2 2
	.eqv LINE3 4
	.eqv LINE4 8
	.eqv LINE5 16
	.eqv LINE6 32
	
	
	.text
main:
	#-- Usamos el regitro x5 como puntero de acceso al puerto
	#-- Cargamos en x5 la direccion de memoria del puerto
	li x5, DISP_R
	
	#-- Cargar la dirección de memoria del array "tabla"

bucle:
	#-- Cargar el primer valor que queremos mostrar en el LED
	li x6, LINE1
	
	#-- Sacar el valor por el puerto, para que se iluminen
	#-- 	los segmentos del display
	sw x6, 0(x5)
	
	#-- Repetir con el resto de valores
	li x6, LINE2
	sw x6, 0(x5)
	li x6, LINE3
	sw x6, 0(x5)
	li x6, LINE4
	sw x6, 0(x5)
	li x6, LINE5
	sw x6, 0(x5)
	li x6, LINE6
	sw x6, 0(x5)
	
	#-- Repetir el bucle
	b bucle

