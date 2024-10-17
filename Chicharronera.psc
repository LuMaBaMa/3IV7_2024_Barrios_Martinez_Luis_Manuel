Algoritmo Chicharronera
	Definir a, b, c, X1, X2, Ra Como Real
	
	Escribir "Ingrese el valor de a"
	Leer a
	Escribir "Ingrese el valor de b"
	Leer b
	Escribir "Ingrese el valor de c"
	Leer c
	Ra= b^2 - 4*a*c
	
	Si Ra >= 0 Entonces
		X1 = (-b + Raiz(Ra)) / (2*a)
		X2 = (-b - Raiz(Ra)) / (2*a)
		Escribir "x1 es igual a ", X1
		Escribir "x2 es igual a ", X2
	Sino
		Escribir "La ecuación no tiene soluciones reales"
	FinSi
FinAlgoritmo