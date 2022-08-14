Historial2 = (23500, 5960, 2300, 10200, 8900) 

p1 , p2, p3, p4, p5 = Historial2 # El p1 hasta p5  son variables que desempaquetan los datos de la tupla para poder emplearlos en la suma y en if.  

monto_total = p1 + p2 + p3 + p4 + p5  # realizando la suma 

print("El monto total de servicios y consultas serían ", monto_total ,"pesos") # imprime en la consola el monto total de los servicios y consultas en pesos

Número_mayor = 0     # empleo el if para ver cuales de los valores son mayores que 5000. 

if p1 > 5000:
    Número_mayor += 1

if p2 > 5000:
    Número_mayor += 1
    
if p3 > 5000:
    Número_mayor += 1
    
if p4 > 5000:
    Número_mayor += 1
    
if p5 > 5000:
    Número_mayor += 1
    
print("Son: ", Número_mayor ,"que son más caro que 5000 pesos") # Imprime la cantidad de valores mayores que 5000
