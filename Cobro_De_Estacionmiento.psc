Algoritmo Cobro_De_Estacionmiento
	Definir HoraEn, MinEn, HoraSa, MinSa, SegEn, SegSa Como Real
	Definir TotalHora, TotalMin, MinRes, TotalSeg Como Real
	Definir CobroTotal Como Real
	
	Escribir "Ingrese la hora de entrada(Formato de 0-23hrs)"
	Leer HoraEn
	Repetir
		Si HoraEn < 0 o HoraEn >= 24 Entonces
			Escribir "Ingrese la hora de entrada(Formato de 0-23 horas)"
			Leer HoraEn
			R = 1
		SiNo
			Si HoraEn >= 0 y HoraEn < 24 Entonces
				HoraEn = HoraEn
				R = 0
			FinSi
		FinSi
	Hasta Que R <> 1
	
	Escribir "Ingrese los minutos de entrada (Formato de 0-59 minutos)"
	Leer MinEn
	Repetir
		Si MinEn < 0 o MinEn >= 60 Entonces
			Escribir "Ingrese los minutos de entrada (Formato de 0-59 minutos)"
			Leer MinEn
			R = 1
		SiNo
			Si MinEn >= 0 y MinEn < 60 Entonces
				MinEn = MinEn
				R = 0
			FinSi
		FinSi
	Hasta Que R <> 1
	
	Escribir "Ingrese los segundos de entrada (Formato de 0-59 minutos)"
	Leer SegEn
	Repetir
		Si SegEn < 0 o SegEn >= 60 Entonces
			Escribir "Ingrese los segundos de entrada (Formato de 0-59 minutos)"
			Leer SegEn
			R = 1
		SiNo
			Si SegEn >= 0 y SegEn < 60 Entonces
				SegEn = SegEn
				R = 0
			FinSi
		FinSi
	Hasta Que R <> 1
	
	Escribir "Ingrese la hora de salida (Formato de 0-23 horas)"
	Leer HoraSa
	Repetir
		Si HoraSa < 0 o HoraSa >= 24 Entonces
			Escribir "Ingrese la hora de salida (Formato de 0-23 horas)"
			Leer HoraSa
			R = 1
		SiNo
			Si HoraSa >= 0 y HoraSa < 24 Entonces
				HoraSa = HoraSa
				R = 0
			FinSi
		FinSi
	Hasta Que R <> 1
	
	Escribir "Ingrese los minutos de salida (Formato de 0-59 minutos)"
	Leer MinSa
	Repetir
		Si MinSa < 0 o MinSa >= 60 Entonces
			Escribir "Ingrese los minutos de salida (Formato de 0-59 minutos)"
			Leer MinSa
			R = 1
		SiNo
			Si MinSa >= 0 y MinSa < 60 Entonces
				MinSa = MinSa
				R = 0
			FinSi
		FinSi
	Hasta Que R <> 1
	
	Escribir "Ingrese los segundos de salida (Formato de 0-59 minutos)"
	Leer SegSa
	Repetir
		Si SegSa < 0 o SegSa >= 60 Entonces
			Escribir "Ingrese los segundos de salida (Formato de 0-59 minutos)"
			Leer SegSa
			R = 1
		SiNo
			Si SegSa >= 0 y SegSa < 60 Entonces
				SegSa = SegSa
				R = 0
			FinSi
		FinSi
	Hasta Que R <> 1
	
	TotalHora = HoraSa - HoraEn
	TotalMin = MinSa - MinEn
	TotalSeg = SegSa - SegEn
	
	Si TotalMin < 0 Entonces
		TotalMin = TotalMin + 60
		TotalHora = TotalHora - 1
	Fin Si
	TotalMin = (TotalHora*60) + TotalMin
	
	Si TotalSeg < 0 Entonces
		TotalMin = TotalMin + 1
	FinSi
	
	Si TotalMin >= 60 Entonces
		CobroTotal = CobroTotal + (TotalMin/60)*15
	Fin Si
	
	MinRes = TotalMin%60
	Si MinRes > 0  Entonces
		Frac15min = MinRes
		CobroTotal = CobroTotal + (Frac15min*6)
	Fin Si
	
	Escribir "El total a pagar es de: ",CobroTotal, " pesos"
FinAlgoritmo