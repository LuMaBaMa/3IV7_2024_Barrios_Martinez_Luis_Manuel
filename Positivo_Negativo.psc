Algoritmo Positivo_Negativo
	Escribir "¿Cuantos numeros va a ingresar?"
	Leer N
	Si N <= 0 Entonces
		Escribir "Buen dia"
	SiNo
		Para i <- 1 Hasta N Con Paso 1 Hacer
			Escribir "Ingrese un numero"
			Leer Num
			Si Num < 0 Entonces
				Neg = Neg + 1
			SiNo
				Pos = Pos + 1
			FinSi
		FinPara
	FinSi
	Escribir "La cantidad de numeros positivos es de: ",Pos
	Escribir "La cantidad de numeros negativos es de: ",Neg
FinAlgoritmo
