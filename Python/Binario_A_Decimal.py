import math

Binario = int(input("Ingrese el numero binario: "))
Num = 0
Potencia = 0

while Binario > 0:
    Residuo = Binario%10
    if Residuo == 1:
        Num  = Num + 2**Potencia
    
    Potencia = Potencia + 1
    Binario = math.trunc(Binario/10)

print("El numero decimal es: ",Num)
