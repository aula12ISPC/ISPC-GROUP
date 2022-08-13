#CONSIGNA
"""7) Crear una tupla en Python con el nombre de “Historial3” la cual contenga los siguientes valores:
9530, 4120, 4580, 1500, 890,7516,426
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Lennon”. 
Calcular el promedio de gasto en pesos por atención de “Lennon” mostrándolo en pantalla. Si el promedio es mayor a 4500 indicar con un mensaje “Se ha excedido del gasto promedio para su mascota”.
"""
def promedio_lennon():
    historial3: tuple = (9530,4120,4580,1500,890,7516,426)
    gasto_promedio: float = sum(historial3)/len(historial3)
    print(gasto_promedio)
    if gasto_promedio > 4500:
        print('Se ha excedido del gasto promedio para su mascota')
        
promedio_lennon()