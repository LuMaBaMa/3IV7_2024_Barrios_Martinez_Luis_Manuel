import math

Binario = " "
Num = int(input("Ingrese el numero a convertir: "))
if Num >= 0:
    while Num > 0:
        Residuo = Num%2
        NBin = str(Residuo)
        Binario = NBin + Binario
        Num = math.trunc(Num/2)
    
    if Binario == " ":
        Binario  = "0"
    
print("El binario es: ",Binario)
