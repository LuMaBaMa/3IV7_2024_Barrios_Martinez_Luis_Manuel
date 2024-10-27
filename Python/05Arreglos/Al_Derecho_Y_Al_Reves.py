Columnas = int(input("Ingrese la cantidad de columnas: "))
Filas = int(input("Ingrese la cantidad de filas: "))

Arreglo = []

for i in range(Filas):
    fila = []
    for j in range(Columnas):
        print(f"Ingrese el numero de la columna ",j+1," de la fila ",i+1,": ")
        Num = int(input())
        fila.append(Num)
    Arreglo.append(fila)

print("El arreglo principal es de: ")
for i in range(Filas):
    for j in range(Columnas):
        print(Arreglo[i][j], end = " ")
    print()

print("La inversa es: ")
for j in range(Columnas):
    for i in range(Filas):
        print(Arreglo[i][j], end = " ")
    print()