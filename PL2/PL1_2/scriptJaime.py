import os
import sys

planificador = sys.argv[1]
domain = sys.argv[2]
tamaño = [40, 50, 60, 70, 80, 90, 100, 125, 150, 175]

if planificador == "lpg-td":
    # iteramos 5 veces
    for i in tamaño:
        # ejecutamos el planificador con su ejecutable
        os.system("./lpg-td -o " + domain + " -f C:\TODO\GitHub archivos\PlanificacionAutomatica_uah\PL1_2\"+str(i)+"_p"+str(i)+"_c"+str(i)+"_g"+str(i)+"_ct3.pddl -n 1)

elif planificador == "sgplan40":               
    # iteramos 5 veces
    for i in tamaño:
        # ejecutamos el planificador con su ejecutable
        os.system("./sgplan40 -o " + domain + " -f C:\TODO\GitHub archivos\PlanificacionAutomatica_uah\PL1_2\"+str(i)+"_p"+str(i)+"_c"+str(i)+"_g"+str(i)+"_ct3.pddl -out tamaño"+str(i))


elif planificador == "satplan":
   # iteramos 5 veces
    for i in tamaño:
        # ejecutamos el planificador con su ejecutable
        os.system("./satplan -solver siege_v4 -domain " + domain + " -problem C:\TODO\GitHub archivos\PlanificacionAutomatica_uah\PL1_2\"+str(i)+"_p"+str(i)+"_c"+str(i)+"_g"+str(i)+"_ct3.pddl")


elif planificador == "downward.sif":
       # iteramos 5 veces
    for i in tamaño:
        # ejecutamos el planificador con su ejecutable
        os.system("./downward.sif --alias lama-first " + domain + " C:\TODO\GitHub archivos\PlanificacionAutomatica_uah\PL1_2\"+str(i)+"_p"+str(i)+"_c"+str(i)+"_g"+str(i)+"_ct3.pddl")