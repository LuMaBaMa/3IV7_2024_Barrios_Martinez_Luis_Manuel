print("Hola Mundo")

#¿Qué es lo que opina sobre la situación actual?

x = 17.89
print(x)

#Ejemplo de if

valores = 28
if valores < 0:
    #Cuando sea verdad
    print('Es menor a 0')
elif valores > 0:
    print('Es mayor a 0')
else:
    #Cuando no sea verdad
    print('Es 0')

#Bucles
Num = 0
print('Tabla del 2')

#Mientras
while Num <= 10:
    print("Resultado: ",Num*2)
    print('Antes: ',Num)
    Num = Num + 1
    print('Despues: ',Num)

#For
Cadena = [3,7,5,8]

for n in Cadena:
    print(n)