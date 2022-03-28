#-- David Tapiador

#-- Programa con todas las llamadas al sistema definidas como constantes


	.data
	
	#-- Servicios:
	.eqv PRINT_INT 1	#-- float-2, double-3, string-4, char-11
	.eqv READ_INT 5		#-- float-6, double-7, string-8, char-12
	
	#-- Servicio Exit
	.eqv EXIT 10
	

	.text
	
	#-- No se hace nada
	
	#-- Terminar
	li a7, EXIT
	ecall