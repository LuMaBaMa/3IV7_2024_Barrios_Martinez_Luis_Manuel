Algoritmo Censo
	Definir AñoNacimiento,AñoFallecimiento,Año Como Entero
	Definir Joven,Viejo Como Caracter
	Definir Nombre, Estado Como Caracter
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
		Dimension Estado[N]
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
			Vivo = 0
			Petateo = 0
			Min = 1000
			Max = 0
			Para j <- 1 Hasta N Con Paso 1 Hacer
				Si AñoFallecimiento[j] <= Año Entonces
					Escribir Nombre[j]," ya fallecio"
					Petateo = Petateo + 1
					Estado[j] = "Muerto"
				SiNo
					Si AñoNacimiento[j] <= Año Entonces
						Años[j] = Año
						Edad[j] = Años[j] - AñoNacimiento[j]
						Escribir "La edad de ",Nombre[j]," es ",Edad[j]
						Vivo = Vivo + 1
						Estado[j] = "Vivo"
					SiNo
						Edad[j] = -1
					FinSi
				FinSi
				Si Estado[j] = "Vivo" Entonces
					Si Edad[j] > Max Entonces
						Max = Edad[j]
						Viejo <- Nombre[j]
					SiNo
						Si Edad[j] = 0 Entonces
							Min = Edad[j]
							Joven <- Nombre[j]
						SiNo
							Si Edad[j] < 0 Entonces
								Edad[j] = Edad[j]
							SiNo
								Si Edad[j] < Min Entonces
									Min = Edad[j]
									Joven <- Nombre[j]
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				Si Estado[j] = "Vivo" Entonces
					Si Edad[j] > Max Entonces
						Max = Edad[j]
						Viejo <- Nombre[j]
					SiNo
						Si Edad[j] = 0 Entonces
							Min = Edad[j]
							Joven <- Nombre[j]
						SiNo
							Si Edad[j] < 0 Entonces
								Edad[j] = Edad[j]
							SiNo
								Si Edad[j] < Min Entonces
									Min = Edad[j]
									Joven <- Nombre[j]
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinPara
			Si Vivo = 0 Entonces
				Escribir "No hay nadie vivo de la lista"
			SiNo
				Si Vivo = 1 Entonces
					Escribir "La única persona viva este año es: ",Viejo
					Escribir "La cantidad de personas muertas de la lista este año es: ",Petateo
				SiNo
					Si Joven <> "" Entonces
						Escribir "El mas viejo en este año fue ",Viejo
						Escribir "El mas joven en este año fue ",Joven
						Escribir "La cantidad de personas vivas este año fue de ",Vivo
						Escribir "La cantidad de personas muertas este año fue de ",Petateo
					SiNo
						Si Vivo = 1 Entonces
							Escribir "La única persona viva este año es: ",Viejo
							Escribir "La cantidad de personas muertas de la lista este año es: ",Petateo
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	FinSi
FinAlgoritmo