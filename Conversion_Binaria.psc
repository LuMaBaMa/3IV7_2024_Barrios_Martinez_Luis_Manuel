Algoritmo Conversion_Binaria
	Definir Num, Residuo Como Entero
	Definir Binario Como Cadena
	//El binario se tiene que concadenar (unir)
	Binario = " "
	
	Escribir "Ingresa el numero que desea convertir"
	Leer Num
	//Todos los positivos
	Si Num >= 0 Entonces
		Mientras Num > 0 Hacer
			Residuo = Num%2
			//Ir armando el binario
			NBinario = ConvertirATexto(Residuo)
			//Concatenar los elementos de texto
			Binario = NBinario + Binario
			Num =  Trunc(Num/2)
		FinMientras
		
		//Si el numero es 0
		Si Num = 0 Entonces
			Binario = "0"
		FinSi
		Escribir "El numero binario es: ",Binario
	FinSi
FinAlgoritmo
