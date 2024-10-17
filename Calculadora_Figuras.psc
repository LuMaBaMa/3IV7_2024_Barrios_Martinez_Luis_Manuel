SubProceso Circulo(Radio)
	Definir Area,Perimetro Como Real
	Perimetro = pi*(Radio*2)
	Area = pi*(Radio^2)
	Escribir "El perimetro del circulo es de: ",Perimetro
	Escribir "El area del circulo es de: ",Area
FinSubProceso

SubProceso Rectangulo(Base,Altura)
	Definir Area,Perimetro Como Real
	Area = Base * Altura
	Perimetro = (Base*2)+(Altura*2)
	Escribir "El area del rectangulo es de: ",Area
	Escribir "El perimetro del rectangulo es de: ",Perimetro
FinSubProceso

SubProceso Triangulo(Base,Altura,Lado1,Lado2,Lado3)
	Definir Area,Perimetro Como Real
	Area = (Base*Altura)/2
	Perimetro = Lado1 + Lado2 + Lado3
	Escribir "El area del triangulo es de: ",Area
	Escribir "El perimetro del triangulo es de: ",Perimetro
FinSubProceso

SubProceso Pentagono(Apotema,Lado)
	Definir Area,Perimetro Como Real
	Perimetro = Lado * 5;
	Area = (Perimetro * Apotema)/2
	Escribir "El perimetro del pentagono es de: ",Perimetro;
	Escribir "El area del pentagono es de: ",Area
FinSubProceso

SubProceso Hexagono(Apotema,Lado)
	Definir Area,Perimetro Como Real
	Perimetro = Lado * 6;
	Area = (Perimetro * Apotema)/2
	Escribir "El perimetro del hexagono es de: ",Perimetro;
	Escribir "El area del hexagono es de: ",Area
FinSubProceso

SubProceso Heptagono(Apotema,Lado)
	Definir Area,Perimetro Como Real
	Perimetro = Lado * 7;
	Area = (Perimetro * Apotema)/2
	Escribir "El perimetro del heptagono es de: ",Perimetro;
	Escribir "El area del heptagono es de: ",Area
FinSubProceso

SubProceso Decagono(Apotema,Lado)
	Definir Area,Perimetro Como Real
	Perimetro = Lado * 10;
	Area = (Perimetro * Apotema)/2
	Escribir "El perimetro del decagono es de: ",Perimetro;
	Escribir "El area del decagono es de: ",Area
FinSubProceso
SubProceso Dodecagono(Lado)
	Definir Area,Perimetro Como Real
	Perimetro = Lado * 12
	Area = 3*(2+raiz(3))*Lado^2
	Escribir "El perimetro es de: ",Perimetro
	Escribir "El area es de: ",Area
FinSubProceso

Algoritmo Calculadora_Figuras
	Definir Op Como Caracter
	Definir Base, Altura, Lado1, Lado2, Lado3, Lado, Apotema Como Real
	Escribir "Selecciona una opción"
	Escribir "A.-Area y Perimetro del Circulo"
	Escribir "B.-Area y Perimetro del Triangulo"
	Escribir "C.-Area y Perimetro del Rectangulo"
	Escribir "D.-Area y Perimetro del Pentagono"
	Escribir "E.-Area y Perimetro del Hexagono"
	Escribir "F.-Area y Perimetro del Heptagono"
	Escribir "G.-Area y Perimetro del Decagono"
	Escribir "H.-Area y Perimetro del Dodecagono"
	Leer Op
	Segun Op Hacer
		"A":
			Escribir "Ingrese el radio del circulo"
			Leer Radio
			Circulo(Radio);
		"B":
			Escribir "Ingresa la base del rectangulo"
			Leer Base
			Escribir "Ingresa la altura del rectangulo"
			Leer Altura
			Rectangulo(Base, Altura);
		"C":
			Escribir "Ingresa la base del triangulo"
			Leer Base;
			Escribir "Ingresa la altura del triangulo"
			Leer Altura;
			Escribir "Ingresa lado 1"
			Leer Lado1;
			Escribir "Ingresa lado 2"
			Leer Lado2;
			Escribir "Ingresa lado 3"
			Leer Lado3;
			Triangulo(Base,Altura,Lado1,Lado2,Lado3);
		"D":
			Escribir "Ingrese la apotema del pentagono"
			Leer Apotema;
			Escribir "Ingrese el lado del pentagono"
			Leer Lado;
			Pentagono(Apotema,Lado);
		"E":
			Escribir "Ingrese el apotema del hexagono"
			Leer Apotema;
			Escribir "Ingrese la longitud del lado del hexagono"
			Leer Lado;
			Hexagono(Apotema,Lado);
		"F":
			Escribir "Ingrese el apotema del heptagono"
			Leer Apotema;
			Escribir "Ingrese la longitud del lado del heptagono"
			Leer Lado;
			Heptagono(Apotema,Lado);
		"G":
			Escribir "Ingrese el apotema del heptagono"
			Leer Apotema;
			Escribir "Ingrese la longitud del lado del heptagono"
			Leer Lado;
			Decagono(Apotema,Lado);
		"H":
			Escribir "Ingrese la longitud del lado del dodecagono"
			Leer Lado;
			Dodecagono(Lado);
		De Otro Modo:
			Escribir "Opcion no valida"
	FinSegun
FinAlgoritmo