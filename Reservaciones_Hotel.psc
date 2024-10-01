Algoritmo Reservaciones_Hotel
	Definir Estancia, Habitacion, NR, Estado Como Entero
	Dimension Habitaciones[10]
	Dimension Estadia[10]
	Dimension NR[10]
	Habitaciones[1] <- 1
	Habitaciones[2] <- 1
	Habitaciones[3] <- 1
	Habitaciones[4] <- 1
	Habitaciones[5] <- 1
	Habitaciones[6] <- 1
	Habitaciones[7] <- 1
	Habitaciones[8] <- 1
	Habitaciones[9] <- 1
	Habitaciones[10] <- 1
	Repetir
		Escribir "Buenos días, tardes o noches"
		Escribir "Elija la opción a realizar"
		Escribir "1 Clientes"
		Escribir "2 Personal"
		Escribir "3 Administrador"
		Escribir "4 Salir"
		Leer Op
		Segun Op Hacer
			1:
				Escribir "¿Qué desea hacer?"
				Escribir "1 Reservar una habitación"
				Escribir "2 Cancelar una reservación"
				Leer El
				Segun El Hacer
					1:
						Escribir "Elija una habitación del 1 al 10"
						Leer N
						Repetir
							Si N > 10 o N <= 0 Entonces
								Escribir "Elija una habitación del 1 al 10"
								Leer N
								R = 1
							SiNo
								Habitaciones[N] = Habitaciones[N] - 1
								Escribir "Ingrese su tiempo de estadia"
								Leer Estancia
								Estadia[N] = Estancia
								Num = azar(99999)
								Escribir "Este es su número de reservación: ",Num
								NR[N] = Num
								R = 0
							FinSi
						Hasta Que R <> 1
					2:
						Escribir "Ingrese su habitación"
						Leer N
						Repetir
							Si N > 10 o N <= 0 Entonces
								Escribir "Ingrese su habitación"
								Leer N
								R = 1
							SiNo
								Escribir "Ingrese su numero de reservación"
								Leer Num
								Si NR[N] = Num Entonces
									Escribir "Su reservación a sido cancelada exitosamente"
									Habitaciones[N] = Habitaciones[N] + 1
								SiNo
									Escribir "Esta habitación no esta reservada por usted"
								FinSi
								R = 0
							FinSi
						Hasta Que R <> 1
				FinSegun
			2:
				Para i <- 1 Hasta 10 Con Paso 1 Hacer
					Si Habitaciones[i] = 0 Entonces
						Escribir "La habitacion ",i," esta ocupada"
					SiNo
						Si Habitaciones[i] = 1 Entonces
							Escribir "La habitacion ",i," esta libre"
						FinSi
					FinSi
				FinPara
			3:
				Para i <- 1 Hasta 10 Con Paso 1 Hacer
					Si Habitaciones[i] = 1 Entonces
						Capacidad = Capacidad + 1
					FinSi
				FinPara
				Porc = Capacidad/10
				Escribir "El hotel esta libre al ",(Porc*100),"%"
			4:
				Op = 4
			De Otro Modo:
				Escribir "Elija una opción"
		FinSegun
	Hasta Que Op = 4
FinAlgoritmo