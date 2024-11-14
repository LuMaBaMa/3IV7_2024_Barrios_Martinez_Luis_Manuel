#Derivado a que es necesario poder almacenar diferentes fuentes de datos en python se utiliza la variable diccionario
#Un diccionario es capaz de almacenar diferentes tipos de datos en formato de lista
#Primero vamos a crear una lista de alumnos
import tkinter as tk
from tkinter import messagebox, simpledialog

Alumnos = []

#Vamos a crear una función que se encargue de registrar a un alumno
def Registrar_Alumno():
    boleta = simpledialog.askinteger("Entrada","Ingresa la boleta del alumno: ")
    nombre = input("Ingresa el nombre del alumno: ")
    appat = input("Inresa el apellido paterno del alumno: ")
    apmat = input("Inresa el apellido materno del alumno: ")
    fecnac = input("Ingrese la fecha de nacimiento:")

    calificaciones = []
    #Vamos a solicitar tres calificaciones
    for i in range(1,4):
        calif = input(float("Ingrese la calificación del parcial: "))
        calificaciones.append(calif)
#Defino al alumno
    alumno = {
        "boleta": boleta,
        "nombre": nombre,
        "appat": appat,
        "apmat": apmat,
        "fecnac": fecnac,
        "calificaciones": calificaciones
    }

    Alumnos.append(alumno)
    messagebox.showinfo("Alumno registrado exitosamente")
    print("El alumno se registro exitosamente")

#funcion para consultar los datos del arreglo de alumnos(lista)
def Consultar_Alumno():
    if not Alumnos:
        print("No hay alumnos registrados")
    else:
        print("Lista de alumnos: ")
        for alumno in Alumnos:
            print("Boleta: {alumno['boleta']}, Nombre: {alumno['nombre']}{alumno['appat']}{alumno['apmat']}, Fecha de Nacimiento: {alumno['fecnac']}, Calificaciones: {alumno['calificaciones']}")

def Editar_Alumno():
    boleta = input("Ingresa la boleta del alumno a editar: ") 
    for alumno in Alumnos:
        if alumno["boleta"] == boleta:
            alumno["nombre"] = input("Ingresa el nuevo nombre del alumno (o presiona enter para mantener el actual): ") or alumno['Nombre']
            alumno["appat"] = input("Ingresa el nuevo apellido paterno del alumno (o presiona enter para mantener el actual): ") or alumno['appat']
            alumno["apmat"] = input("Ingresa el nuevo apellido materno del alumno (o presiona enter para mantener el actual): ") or alumno['apmat']
            alumno["fecnac"] = input("Ingresa la nueva fecha de nacimiento del alumno (o presiona enter para mantener el actual): ") or alumno['fecnac']
            for i in range(3):
                ncalif = input("Ingresa la nueva calificacion o presiona Enter  para mantener la actual: ")
                if ncalif:
                    alumno["calificaciones"][i] = float(ncalif)
    return
    print("No hay mas alumnos")

#Vamos a crear un menu
def main():
    while True:
        print("Menu de opciones: ")
        print("1. Registrar alumno")
        print("2. Consultar alumno")
        print("3. Editar alumno")
        print("4. Eliminar alumno")
        print("5. Salir")
        opcion = input("Ingrese la opcion que desea realizar: ")

        if opcion == "1":
            Registrar_Alumno()
        elif opcion == "2":
            Consultar_Alumno()
        elif opcion == "3":
            Editar_Alumno()
        elif opcion == "4":
            Eliminar_Alumno()
        elif opcion == "5":
            print("Chauu")
            break
        else:
            print("Opcion no valida")
        
main()