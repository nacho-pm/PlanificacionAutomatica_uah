import os
import sys
import time

planificador = sys.argv[1]
domain = sys.argv[2]
tamaño = [40, 50, 60, 70, 80, 90, 100, 125, 150, 175]

tiempo = {}

if planificador == "lpg-td":
    for i in tamaño:
        inicio = time.time()
        os.system("./lpg-td -o " + domain + " -f /home/kali/github/PlanificacionAutomatica_uah/PL1_1/drone_problem_d1_l"+str(i)+"_p"+str(i)+"_c"+str(i)+"_g"+str(i)+"_ct3.pddl -n 1")
        diferencia = time.time() - inicio
        tiempo.update({i: diferencia})

elif planificador == "sgplan40":
    for i in tamaño:
        inicio = time.time()
        os.system("./sgplan40 -o " + domain + " -f /home/kali/github/PlanificacionAutomatica_uah/PL1_1/drone_problem_d1_l"+str(i)+"_p"+str(i)+"_c"+str(i)+"_g"+str(i)+"_ct3.pddl -out tamaño"+str(i))
        diferencia = time.time() - inicio
        tiempo.update({i: diferencia})

elif planificador == "satplan":
    for i in tamaño:
        inicio = time.time()
        os.system("./satplan -solver siege -domain " + domain + " -problem /home/kali/github/PlanificacionAutomatica_uah/PL1_1/drone_problem_d1_l"+str(i)+"_p"+str(i)+"_c"+str(i)+"_g"+str(i)+"_ct3.pddl")
        diferencia = time.time() - inicio
        tiempo.update({i: diferencia})

elif planificador == "downward.sif":
    for i in tamaño:
        inicio = time.time()
        os.system("./downward.sif --alias lama-first " + domain + " /home/kali/github/PlanificacionAutomatica_uah/PL1_1/drone_problem_d1_l"+str(i)+"_p"+str(i)+"_c"+str(i)+"_g"+str(i)+"_ct3.pddl")
        diferencia = time.time() - inicio
        tiempo.update({i: diferencia})

elif planificador == "ff":
    for i in tamaño:
        inicio = time.time()
        os.system("./ff -o " + domain + " -f /home/kali/github/PlanificacionAutomatica_uah/PL1_1/drone_problem_d1_l"+str(i)+"_p"+str(i)+"_c"+str(i)+"_g"+str(i)+"_ct3.pddl")
        diferencia = time.time() - inicio
        tiempo.update({i: diferencia})

#para cada elemento del diccionario printamos la key y su valor
for key, valor in tiempo.items():
    print(key, valor)
