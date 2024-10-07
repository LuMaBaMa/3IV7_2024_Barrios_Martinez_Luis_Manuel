Algoritmo Suma_otravez
	// Desarrollen un algoritmo para sumar los numeros enteros del uno al 10
	Definir Suma Como Entero
	Definir N Como Entero
	N <- 0
	Suma <- 0
	Escribir 'Realiza la suma de N numeros'
	Leer K
	
	Para i<-1 Hasta K Con Paso 1 Hacer
		Escribir 'Valor actual de N: ', N
		N <- N+1
		Escribir N
		Suma <- Suma+N
		Escribir Suma
	FinPara
	Escribir 'La suma es: ', Suma
FinAlgoritmo
