#Lo primero que haremos será definir la estructura de la cola

def crear_cola():
    return []

def encolar(cola,elemento):
    cola.append(elemento)

def esta_vacia(cola):
    return len(cola) == 0

def desencolar(cola):
    if esta_vacia(cola):
        raise IndexError("Error: La cola esta vacía")
    return cola.pop(0)

def frente(cola):
    if esta_vacia(cola):
        raise IndexError("Error: La cola esta vacía")
    return cola[0]

def tamano(cola):
    return len(cola)

def mostrar_cola(cola):
    return f"Cola actual: {cola}"
