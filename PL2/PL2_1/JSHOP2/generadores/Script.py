import os
import sys
import time
import shutil

tamaño = [40, 50, 60, 70, 80, 90, 100, 125, 150, 175]

tiempo = {}


for i in tamaño:
    origen = "/home/kali/github/PlanificacionAutomatica_uah/PL2/PL2_1/JSHOP2/drone_problem_d1_l"+str(i)+"_p"+str(i)+"_c"+str(i)+"_g"+str(i)+"_ct3"
    destino = "/home/kali/Desktop/JSHOP2/domains/pl2_1domain/problem"
    shutil.copy(origen, destino)
    
    inicio = time.time()
    os.system("./jshop2-console.sh pl2_1domain")
    diferencia = time.time() - inicio
    tiempo.update({i: diferencia})


#para cada elemento del diccionario printamos la key y su valor
for key, valor in tiempo.items():
    print(key, valor)
