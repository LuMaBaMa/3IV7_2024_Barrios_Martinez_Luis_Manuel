Algoritmo Censo
	Definir AñoNacimiento,AñoFallecimiento,Año Como Entero
	Definir Joven,Viejo Como Caracter
	Definir Nombre Como Caracter
	Max <- 0
	Min <- 0
	Vivo <- 0
	Petateo <- 0
	Escribir "Ingrese el tamaño del listado"
	Leer N
	Si N <= 0 Entonces
		Escribir "Que tenga un buen día"
		
	SiNo
		Dimension Nombre[N]
		Dimension AñoNacimiento[N]
		Dimension AñoFallecimiento[N]
		Dimension Años[N]
		Dimension Edad[N]
		Para i <- 1 Hasta N Con Paso 1 Hacer
			Escribir "Ingrese el nombre de la persona ",i
			Leer Nom
			Nombre[i] = Nom
			Escribir "Ingrese el año de nacimiento de la persona ",i
			Leer AñoN
			AñoNacimiento[i] = AñoN
			Escribir "Ingrese el año de fallecimiento de la persona ",i
			Leer AñoF
			AñoFallecimiento[i] = AñoF
		FinPara
		Escribir "Ingrese cuantos años va a censar"
		Leer CAños
		Para i <- 1 Hasta CAños Con Paso 1 Hacer
			Escribir "Ingrese el ",i," año a censar"
			Leer Año
			Para j <- 1 Hasta N Con Paso 1 Hacer
				Si AñoFallecimiento[j] < Año Entonces
					Petateo = Petateo + 1
				SiNo
					Años[j] = Año
					Edad[j] = Años[j] - AñoNacimiento[j]
					Vivo = Vivo + 1
					Si Edad[j] > Max Entonces
						Max = Edad[j]
						Viejo <- Nombre[j]
					SiNo
						Si Min = 0 Entonces
							Min = Edad[j]
							Joven <- Nombre[j]
						SiNo
							Si Edad[j] < Min Entonces
								Min = Edad[j]
								Joven <- Nombre[j]
							FinSi
						FinSi
					FinSi
				FinSi
			FinPara
			Si Viejo = "" Entonces
				Escribir "No queda nadie vivo de la lista"
			SiNo
				Si Joven = "" Entonces
					Escribir "La única persona viva este año es: ",Viejo
					Escribir "La cantidad de personas muertas este año es: ",Petateo
				SiNo
					Escribir "El mas viejo en este año fue ",Viejo
					Escribir "El mas joven en este año fue ",Joven
					Escribir "La cantidad de personas vivas este año fue de ",Vivo
					EScribir "La cantidad de personas muertas este año fue de ",Petateo
				FinSi
			FinSi
		FinPara
	FinSi
FinAlgoritmo