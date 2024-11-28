import cola
import Vista

#definir un diccionario de las funciones del archivo para que pueda invocarlas 

def main():
    #diccionario de las funciones de pila
    logica_pila = {
        "crear_cola" : cola.crear_cola,
        "apilar" : cola.encolar,
        "desapilar": cola.desencolar,
        "cima" : cola.frente,
        "esta_vacia": cola.esta_vacia,
        "tamano" : cola.tamano,
        "mostrar_pila": cola.mostrar_cola
    }

    #crear la interfaz a invocarla
    Vista.crear_interfaz(logica_cola)

main()