#-- David Tapiador

#-- Programa para calcular la suma de los números enteros: 1+2+3+4+5+...
#-- El resultado se deja en el registros 6
#-- Usamos el registro x5 como contador: 1,2,3,4,5,6...
#-- En cada vuelta sumamos el valor de x5 a la cuenta acumulada en x6

	.data
str:	.asciz "Sesion 3 Ejercicio 1"

	.text

	
main:
	#-- Inicializamos los registros x5,x6,x7,x8 a 5,6,7,8 respectivamente
	li x5, 5
	li x6, 6
	li x7, 7
	li x8, 8
	
	#-- Transferir los valores a x15,x16,x17,x18
	mv x15, x5
	mv x16, x6
	mv x17, x7
	mv x18, x8
	
	#-- Llamada al sistema para salir del programa
	li a7, 10
	ecall
