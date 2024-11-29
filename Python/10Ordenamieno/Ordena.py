import tkinter as tk
from tkinter import messagebox
ventana = tk.Tk()
ventana.title("Metodos de ordenamiento")
ventana.geometry("400x400")

lista = []
nlista = []

def burbuja(lista):
    n = len(lista)
    for i in range(n):
        for j in range(n - 1):
            if lista[j] > lista[j + 1]:
                lista[j], lista[j + 1] = lista[j + 1], lista[j]
    messagebox.showinfo("Ordena","La lista ordenanada es: " + str(lista))
    return lista

def seleccion(lista):
    n = len(lista)
    for i in range(n):
        min = i
        for j in range(i + 1, n):
            if lista[j] < lista[min]:
                min = j
            lista[i], lista[min] = lista[min], lista[i]
    messagebox.showinfo("Ordena","La lista ordenada es: " + str(lista))
    return lista

def insercion(lista):
    for i in range(1, len(lista)):
        key = lista[i]
        j = i - 1
        while j >= 0 and key < lista[j]:
            lista[j + 1] = lista[j]
            j -= 1
            lista[j + 1] = key
    messagebox.showinfo("Ordena","La lista ordenada es: " + str(lista))
    return lista

def merge(lista):
    if len(lista) > 1:
        mid = len(lista)//2
        izquierda = lista[:mid]
        derecha = lista[mid:]

        merge(izquierda)
        merge(derecha)

        i = j = k = 0

        while i < len(izquierda) and j < len(derecha):
            if izquierda[i] < derecha[j]:
                lista[k] = izquierda[i]
                i += 1
            else:
                lista[k] = derecha[j]
                j += 1
            k += 1
        
        while i < len(izquierda):
            lista[k] = izquierda[i]
            i += 1
            k += 1

        while j < len(derecha):
            lista[k] = derecha[j]
            j += 1
            k += 1

    messagebox.showinfo("Ordena","La lista ordenada es: " + str(lista))
    return lista

def quick_sort(lista):
    if len(lista) <= 1:
        return lista
    pivote = lista[len(lista)//2]

    izquierda = [x for x in lista if x < pivote]
    medio = [x for x in lista if x == pivote]
    derecha = [x for x in lista if x > pivote]
    ordenada = quick_sort(izquierda) + medio + quick_sort(derecha)
    messagebox.showinfo("Ordena","La lista ordenada es: " + str(ordenada))
    return ordenada

def Ingresa():
    Elemento = El.get()
    lista.append(int(Elemento))
    nlista.append(Elemento)
    El.delete(0, tk.END)
    return lista

def Muestra():
    if not lista:
        messagebox.showinfo("Lista", "La lista está vacía")
    else:
        messagebox.showinfo("Lista", str(nlista))


Texto = tk.Label(ventana, text = "Ingrese un elemento")
Texto.pack(pady = 10)
El = tk.Entry(ventana, width= 20)
El.pack(pady = 10)
Insert = tk.Button(ventana, text = "Ingresar", command = Ingresa)
Insert.pack(pady = 10)
Vista = tk.Button(ventana, text = "Mostrar lista", command = Muestra)
Vista.pack(pady = 10)
Burbuja = tk.Button(ventana, text = "Burbuja", command = lambda: burbuja(lista))
Burbuja.pack(pady = 10)
Seleccion = tk.Button(ventana, text = "Seleccion", command = lambda: seleccion(lista))
Seleccion.pack(pady = 10)
Insercion = tk.Button(ventana, text = "Insercion", command = lambda: insercion(lista))
Insercion.pack(pady = 10)
Mezcla = tk.Button(ventana, text = "Mezcla", command = lambda: merge(lista))
Mezcla.pack(pady = 10)
Rapido = tk.Button(ventana, text = "Or. Rapido", command = lambda: quick_sort(lista))
Rapido.pack(pady = 10)

ventana.mainloop()