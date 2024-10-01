Algoritmo Almacen_Tienda
	Definir Nombre Como Caracter
	Definir Codigo Como Caracter
	Definir Precio Como Real
	Definir Cantidad Como Entero
	MaxProductos = 100
	Dimension Nombre[MaxProductos], Codigo[MaxProductos], Precio[MaxProductos], Cantidad[MaxProductos]
	C = 0
	Repetir
		Escribir "Buenas tardes, ¿Qué acción va a realizar hoy?"
		Escribir "1.-Ingresar un nuevo producto"
		Escribir "2.-Actualizar el inventario"
		Escribir "3.-Consultar el inventario"
		Escribir "4.-Generar reporte"
		Escribir "5.-Salir"
		Leer R
		Segun R Hacer
			1:
				Escribir "Ingrese cuantos articulos va a a ingresar"
				Leer N
				Si N <= 0 Entonces
					Escribir "Ingrese al sistema los productos"
				SiNo
					Si C + N <= MaxProductos Entonces
						Para i <- C + 1 Hasta C + N Con Paso 1 Hacer
							Escribir "Ingrese el nombre del producto"
							Leer Nombre[i]
							Escribir "Ingrese el codigo del producto"
							Leer Codigo[i]
							Escribir "Escribe el precio del producto"
							Leer Precio[i]
							Escribir "Escriba la cantidad inicial del producto"
							Leer Cantidad[i]
						FinPara
						C = C + N
					SiNo
						Escribir "No hay espacio suficiente para almacenar los productos"
					FinSi
				FinSi
			2:
				Escribir "Ingrese el código del producto a actualizar"
				Leer CodPr
				Para i <- 1 Hasta C Con Paso 1 Hacer
					Si (CodPr = Codigo[i]) Entonces
						Escribir "1.-Actualizar cantidad"
						Escribir "2.-Actualizar precio"
						Leer Op
						Segun Op
							1:
								Escribir "Ingrese la nueva cantidad"
								Leer Can
								Cantidad[i] = Can
							2:
								Escribir "Ingrese el nuevo precio"
								Leer Pr
								Precio[i] = Pr
						FinSegun
					FinSi
				FinPara
			3:
				Escribir "Ingrese el codigo del producto"
				Leer CodPr
				Para i <- 1 Hasta C Con Paso 1 Hacer
					Si (CodPr = Codigo[i]) Entonces
						Escribir "Nombre del producto: ",Nombre[i]
						Escribir "Codigo del producto: ",Codigo[i]
						Escribir "Precio del producto: ",Precio[i]
						Escribir "Cantidad restante del producto: ",Cantidad[i]
						Escribir ""
					FinSi
				FinPara
			4:
				Para i <- 1 Hasta C Con Paso 1 Hacer
					Escribir "Articulo ",i
					Escribir "Nombre del producto: ",Nombre[i]
					Escribir "Codigo del producto: ",Codigo[i]
					Escribir "Precio actual del producto: ",Precio[i]
					Escribir "Cantidad actual del producto: ",Cantidad[i]
					Escribir ""
				FinPara
			5:
				R = 5
		FinSegun
	Hasta Que R = 5
FinAlgoritmo