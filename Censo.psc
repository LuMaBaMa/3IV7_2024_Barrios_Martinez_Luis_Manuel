Algoritmo Censo
	Definir A�oNacimiento,A�oFallecimiento,A�o Como Entero
	Definir Joven,Viejo Como Caracter
	Definir Nombre, Estado Como Caracter
	Max <- 0
	Min <- 0
	Vivo <- 0
	Petateo <- 0
	Escribir "Ingrese el tama�o del listado"
	Leer N
	Si N <= 0 Entonces
		Escribir "Que tenga un buen d�a"
		
	SiNo
		Dimension Nombre[N]
		Dimension A�oNacimiento[N]
		Dimension A�oFallecimiento[N]
		Dimension A�os[N]
		Dimension Edad[N]
		Dimension Estado[N]
		Para i <- 1 Hasta N Con Paso 1 Hacer
			Escribir "Ingrese el nombre de la persona ",i
			Leer Nom
			Nombre[i] = Nom
			Escribir "Ingrese el a�o de nacimiento de la persona ",i
			Leer A�oN
			A�oNacimiento[i] = A�oN
			Escribir "Ingrese el a�o de fallecimiento de la persona ",i
			Leer A�oF
			A�oFallecimiento[i] = A�oF
		FinPara
		Escribir "Ingrese cuantos a�os va a censar"
		Leer CA�os
		Para i <- 1 Hasta CA�os Con Paso 1 Hacer
			Escribir "Ingrese el ",i," a�o a censar"
			Leer A�o
			Vivo = 0
			Petateo = 0
			Min = 1000
			Max = 0
			Para j <- 1 Hasta N Con Paso 1 Hacer
				Si A�oFallecimiento[j] <= A�o Entonces
					Escribir Nombre[j]," ya fallecio"
					Petateo = Petateo + 1
					Estado[j] = "Muerto"
				SiNo
					Si A�oNacimiento[j] <= A�o Entonces
						A�os[j] = A�o
						Edad[j] = A�os[j] - A�oNacimiento[j]
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
					Escribir "La �nica persona viva este a�o es: ",Viejo
					Escribir "La cantidad de personas muertas de la lista este a�o es: ",Petateo
				SiNo
					Si Joven <> "" Entonces
						Escribir "El mas viejo en este a�o fue ",Viejo
						Escribir "El mas joven en este a�o fue ",Joven
						Escribir "La cantidad de personas vivas este a�o fue de ",Vivo
						Escribir "La cantidad de personas muertas este a�o fue de ",Petateo
					SiNo
						Si Vivo = 1 Entonces
							Escribir "La �nica persona viva este a�o es: ",Viejo
							Escribir "La cantidad de personas muertas de la lista este a�o es: ",Petateo
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	FinSi
FinAlgoritmo