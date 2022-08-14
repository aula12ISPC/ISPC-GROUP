Historial2 = (2350, 5960, 2300, 10200, 8900) # La tupla 

n1, n2, n3, n4, n5 = Historial2 # Antes que hiciera la suma, desempaqué la tupla 

result = n1 + n2 + n3 + n4 + n5 # la suma con la variable result para imprimir el monto total


# Con los if cuento cuantos gastos de cada número de mi tupla son mayores que 5000

supNumber = 0

if n1 > 5000:          
    supNumber += 1  # Con supNumber me refiero al número mayor que 5000 

    
if n2 > 5000:
   supNumber += 1

    
if n3 > 5000:
    supNumber += 1
    
if n4 > 5000:
    supNumber += 1
    
if n5 > 5000:
    supNumber += 1

    
# Para mostrar la cantidad de gastos que son mayores de 5000 pesos 
print("La cantidades de gastos que son mayores de 5000 son:", supNumber) 


# Para mostrar la suma total de todos los gastos en pesos
print("La suma total de todos los gastos es: ", result, "Pesos")