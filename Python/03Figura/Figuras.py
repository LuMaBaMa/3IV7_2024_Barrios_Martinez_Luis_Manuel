import math

#Vamos a crear una función para calcular área y perimetro
def rectangulo(base,altura):
    area = base * altura
    perimetro = 2*(base+altura)
    return area,perimetro

def triangulo(base,altura,lado1,lado2,lado3):
    area = (base * altura)/2
    perimetro = lado1 + lado2 + lado3
    return area,perimetro

def esfera(radio):
    volumen = (4/3)* math.pi * radio**3
    return volumen

def menu():
    print("ola q ase")
    print("Elige una opcion: ")
    print("A.- Area y Perimetro del Rectangulo")
    print("B.- Area y Perimetro del Triangulo")
    print("C.- Volumen de la Esfera")

#Programa
menu()
op = input("Introduce la opcion a realizar: ").upper()

if op == "A":
    base = float(input("Introduce la base del rectangulo: "))
    altura = float(input("Introduce la altura del rectangulo: "))
    area,  perimetro = rectangulo(base,altura)
    print("El area es de: ",area)
    print("El perimetro es de: ",perimetro)
elif op == "B":
    base = float(input("Introduce la base del triangulo: "))
    altura = float(input("Introduce la altura del triangulo: "))
    lado1 = float(input("Ingrese el lado 1: "))
    lado2 = float(input("Ingrese el lado 2: "))
    lado3 = float(input("Ingrese el lado 3: "))
    area,perimetro = triangulo(base,altura,lado1,lado2,lado3)
    print("El area es de: ",area)
    print("El perimetro es de: ",perimetro)
elif op == "C":
    radio = float(input("Ingrese el radio de la esfera: "))
    volumen = esfera(radio)
    print("El volumen es de: ",volumen)
else:
    print("Opcion no valida")