import os

#tamaño = [40, 50, 60, 70, 80, 90, 100, 125, 150, 175]
tamaño = [46, 47, 48]

for i in tamaño:
    os.system("python3 ./generate-problem1_1.py -d 1 -l "+str(i)+" -p "+str(i)+" -c "+str(i)+" -g "+str(i))