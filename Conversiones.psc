Algoritmo Conversiones
	Escribir "Ingrese la medida (En pies)"
	Leer ft
	in = ft * 12
	yd = ft * 0.3
	cm = in * 2.54
	m = cm / 100
	
	Escribir "Elija la conversion"
	Escribir "1 Pulgadas"
	Escribir "2 Yardas"
	Escribir "3 Centimetros"
	Escribir "4 Metros"
	Leer Op
	Segun Op Hacer
		1:
			Escribir ft," equivale a ",in," pulgadas"
		2:
			Escribir ft," equivale a ",yd," yardas"
		3:
			Escribir ft, " equivale a ",cm," centimetros"
		4:
			Escribir ft," equivale a ",m," metros"
		De Otro Modo:
			Escribir "Esa opción no esta disponible"
	FinSegun
FinAlgoritmo
