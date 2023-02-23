#!/usr/bin/env python3

########################################################################################
# Problem instance generator skeleton for emergencies drones domain.
# Based on the Linköping University TDDD48 2021 course.
# https://www.ida.liu.se/~TDDD48/labs/2021/lab1/index.en.shtml
#
# You mainly have to change the parts marked as TODO.
#
########################################################################################


from optparse import OptionParser
import random
import math
import sys

########################################################################################
# Hard-coded options
########################################################################################

# cajas will have different contents, such as food and medicine.
# You can change this to generate other contents if you want.

content_types = ["comida", "medicinas", "bebida"]


########################################################################################
# Random seed
########################################################################################

# Set seed to 0 if you want more predictability...
# random.seed(0);

########################################################################################
# Helper functions
########################################################################################

# We associate each location with x/y coordinates.  These coordinates
# won't actually be used explicitly in the domain, but we *will*
# eventually use them implicitly by using *distances* in order to
# calculate flight times.
#
# This function returns the euclidean distance between two ubicaciones.
# The ubicaciones are given via their integer index.  You won't have to
# use this other than indirectly through the flight cost function.
def distance(location_coords, location_num1, location_num2):
    x1 = location_coords[location_num1][0]
    y1 = location_coords[location_num1][1]
    x2 = location_coords[location_num2][0]
    y2 = location_coords[location_num2][1]
    return math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)


# This function returns the action cost of flying between two
# ubicaciones supplied by their integer indexes.  You can use this
# function when you extend the problem generator to generate action
# costs.
def flight_cost(location_coords, location_num1, location_num2):
    return int(distance(location_coords, location_num1, location_num2)) + 1


# When you run this script you specify the *total* number of cajas
# you want.  The function below determines randomly which cajas
# will have a specific type of contents.  cajas_with_contents[0]
# is a list of cajas containing content_types[0] (in our
# example "food"), and so on.
# Note: Will have at least one crate per type!

def setup_content_types(options):
    while True:
        num_cajas_with_contents = []
        cajas_left = options.cajas
        for x in range(len(content_types) - 1):
            types_after_this = len(content_types) - x - 1
            max_now = cajas_left - types_after_this
            # print x, types_after_this, cajas_left, len(content_types), max_now
            num = random.randint(1, max_now)
            # print num
            num_cajas_with_contents.append(num)
            cajas_left -= num
        num_cajas_with_contents.append(cajas_left)
        # print(num_cajas_with_contents)

        # If we have 10 medicine and 4 food, with 7 people,
        # we can support at most 7+4=11 goals.
        maxgoals = sum(min(num_cajas, options.persons) for num_cajas in num_cajas_with_contents)

        # Check if the randomization supports the number of goals we want to generate.
        # Otherwise, try to randomize again.
        if options.goals <= maxgoals:
            # Done
            break

    print()
    print("Types\tQuantities")
    for x in range(len(num_cajas_with_contents)):
        if num_cajas_with_contents[x] > 0:
            print(content_types[x] + "\t " + str(num_cajas_with_contents[x]))

    cajas_with_contents = []
    counter = 1
    for x in range(len(content_types)):
        cajas = []
        for y in range(num_cajas_with_contents[x]):
            cajas.append("caja" + str(counter))
            counter += 1
        cajas_with_contents.append(cajas)

    return cajas_with_contents


# This function populates the location_coords list with an X and Y
# coordinate for each location.  You won't have to use this other than
# indirectly through the flight cost function.
def setup_location_coords(options):
    location_coords = [(0, 0)]  # For the depot
    for x in range(1, options.ubicaciones + 1):
        location_coords.append((random.randint(1, 200), random.randint(1, 200)))

    print("Location positions", location_coords)
    return location_coords


# This function generates a random set of goals.
# After you run this, need[personid][contentid] is true if and only if
# the goal is for the person to have a crate with the specified content.
# You will use this to create goal statements in PDDL.
def setup_person_needs(options, cajas_with_contents):
    need = [[False for i in range(len(content_types))] for j in range(options.persons)]
    goals_per_contents = [0 for i in range(len(content_types))]

    for goalnum in range(options.goals):

        generated = False
        while not generated:
            rand_person = random.randint(0, options.persons - 1)
            rand_content = random.randint(0, len(content_types) - 1)
            # If we have enough cajas with that content
            # and the person doesn't already need that content
            if (goals_per_contents[rand_content] < len(cajas_with_contents[rand_content])
                    and not need[rand_person][rand_content]):
                need[rand_person][rand_content] = True
                goals_per_contents[rand_content] += 1
                generated = True
    return need


########################################################################################
# Main program
########################################################################################

def main():
    # Take in all arguments and print them to standard output

    parser = OptionParser(usage='python generator.py [-help] options...')
    parser.add_option('-d', '--drones', metavar='NUM', dest='drones', action='store', type=int, help='the number of drones')
    #parser.add_option('-r', '--carriers', metavar='NUM', type=int, dest='carriers', help='the number of carriers, for later labs; use 0 for no carriers')
    parser.add_option('-l', '--ubicaciones', metavar='NUM', type=int, dest='ubicaciones', help='the number of ubicaciones apart from the depot ')
    parser.add_option('-p', '--personas', metavar='NUM', type=int, dest='persons', help='the number of persons')
    parser.add_option('-c', '--cajas', metavar='NUM', type=int, dest='cajas', help='the number of cajas available')
    parser.add_option('-g', '--metas', metavar='NUM', type=int, dest='goals', help='the number of cajas assigned in the goal')

    (options, args) = parser.parse_args()

    if options.drones is None:
        print("You must specify --drones (use --help for help)")
        sys.exit(1)

    #if options.carriers is None:
    #    print("You must specify --carriers (use --help for help)")
    #    sys.exit(1)

    if options.ubicaciones is None:
        print("You must specify --ubicaciones (use --help for help)")
        sys.exit(1)

    if options.persons is None:
        print("You must specify --persons (use --help for help)")
        sys.exit(1)

    if options.cajas is None:
        print("You must specify --cajas (use --help for help)")
        sys.exit(1)

    if options.goals is None:
        print("You must specify --goals (use --help for help)")
        sys.exit(1)

    if options.goals > options.cajas:
        print("Cannot have more goals than cajas")
        sys.exit(1)

    if len(content_types) > options.cajas:
        print("Cannot have more content types than cajas:", content_types)
        sys.exit(1)

    if options.goals > len(content_types) * options.persons:
        print("For", options.persons, "persons, you can have at most", len(content_types) * options.persons, "goals")
        sys.exit(1)

    print("Drones\t\t", options.drones)
    #print("Carriers\t", options.carriers)
    print("Ubicaciones\t", options.ubicaciones)
    print("Persons\t\t", options.persons)
    print("Cajas\t\t", options.cajas)
    print("Goals\t\t", options.goals)

    # Setup all lists of objects

    # These lists contain the names of all Drones, ubicaciones, and so on.

    drone = []
    person = []
    caja = []
    brazo = []
    location = []


    brazo.append("brazo1")
    brazo.append("brazo2")

    l1=[]
    l1.append("hospital")
    l1.append("campo")
    l1.append("mercado")
    l1.append("cine")
    l1.append("bolera")
    l1.append("parque")
    l1.append("estadio")
    l1.append("teatro")


    for x in range(options.ubicaciones-1):
        if(len(l1)==0):
             location.append("ubi" + str(x + 1))
        else:
            aux= random.choice(l1)
            location.append(aux)
            l1.remove(aux)
        


    for x in range(options.drones):
        drone.append("dron" + str(x + 1))

    #for x in range(options.carriers):
    #    carrier.append("carrier" + str(x + 1))
    for x in range(options.persons):
        person.append("persona" + str(x + 1))
    for x in range(options.cajas):
        caja.append("caja" + str(x + 1))
    
    # Determine the set of cajas for each content.
    # If content_types[0] is "food",
    # then cajas_with_contents[0] is a list
    # containing the names of all cajas that contain food.
    cajas_with_contents = setup_content_types(options)

    # Generates coordinates for each location.
    # You will only use this indirectly,
    # through the flight_cost() function in lab 2.
    location_coords = setup_location_coords(options)

    # Determine which types of content each person needs.
    # If person[0] is "person0",
    # and content_types[1] is "medicine",
    # then needs[0][1] is true iff person0 needs medicine.
    need = setup_person_needs(options, cajas_with_contents)

    # Define a problem name
    #problem_name = "drone_problem_d" + str(options.drones) + "_r" + str(options.carriers) + \
    #               "_l" + str(options.ubicaciones) + "_p" + str(options.persons) + "_c" + str(options.cajas) + \
    #               "_g" + str(options.goals) + "_ct" + str(len(content_types))

    problem_name = "drone_problem_d" + str(options.drones) + \
                   "_l" + str(options.ubicaciones) + "_p" + str(options.persons) + "_c" + str(options.cajas) + \
                   "_g" + str(options.goals) + "_ct" + str(len(content_types))

    # Open output file
    with open(problem_name + ".pddl", 'w') as f:
        # Write the initial part of the problem

        f.write("(define (problem " + problem_name + ")\n")
        f.write("\t(:domain plocation_domain)\n")
        f.write("\t(:objects\n")

        ######################################################################
        # Write objects

        # TODO: Change the type names below (drone, location, ...)
        # to suit your domain.

        for x in drone:
            f.write("\t\t" + x + " - dron\n")

        for x in brazo:
            f.write("\t\t" + x + " - brazo\n")

        for x in location:
            f.write("\t\t" + x + " - ubicacion\n")

        f.write("\t\tdeposito - ubicacion\n")

        for x in caja:
            f.write("\t\t" + x + " - caja\n")

        for x in content_types:
            f.write("\t\t" + x + " - contenido\n")

        for x in person:
            f.write("\t\t" + x + " - humano\n")

        #for x in carrier:
            #f.write("\t" + x + " - carrier\n")

        f.write("\t)\n")

        ######################################################################
        # Generate an initial state

        f.write("\t(:init\n")

        # TODO: Initialize all facts here!

        for x in brazo: 
            f.write("\t\t(brazo-dron dron1 " + x + ")\n")
            f.write("\t\t(free-brazo dron1 " + x + ")\n")

        f.write("\n")
        
        # Todos los drones empiezan en el deposito
        for x in drone:
            f.write("\t\t(ubicacion-dron " + x + " deposito )\n")

        f.write("\n")

        #Inicializamos las personas heridas en sus ubicaciones 
        #¿¿¿¿¿¿¿¿¿LAS PERSONA SE INICIALIZAN ALEATORIAS O HAY QUE PEDIR POR PANTALLA LAS UBICACIONES???????
        for persona in person:
            ubi_persona = random.choice(location)
            f.write("\t\t(ubicacion-humano " + persona +" "+ ubi_persona +" )\n")

        f.write("\n")

        # definir los contenidos de las cajas
        for x in range(len(caja)):
                if caja[x] in cajas_with_contents[0]:
                    content_name = "comida"
                    f.write("\t\t(contenido-caja " + content_name + " " +  caja[x] + ")\n")
                elif caja[x] in cajas_with_contents[1]:
                    content_name = "medicinas"
                    f.write("\t\t(contenido-caja " + content_name + " " +  caja[x] + ")\n")                
                else :
                    content_name = "bebida"
                    f.write("\t\t(contenido-caja " + content_name + " " +  caja[x] + ")\n")

        
                
        # Todos los drones empiezan en el deposito
        for x in caja:
            f.write("\t\t(ubicacion-caja " + x + " deposito )\n")

        f.write("\n")


        f.write("\n")

        for x in range(options.persons):
            for y in range(len(content_types)):
                if need[x][y]:
                    person_name = person[x]
                    content_name = content_types[y]
                    # TODO: write a goal that the person needs a crate
                    # with this specific content
                    f.write("\t\t(humano-necesita "+ person_name +" "+ content_name + ")\n")

        f.write("\t)\n")

        ######################################################################
        # Write Goals

        f.write("\t(:goal (and\n")

        # All Drones should end up at the depot
        
        for x in drone:
            f.write("\t\t(ubicacion-dron "+ x + " deposito)\n")
            # TODO: Write a goal that the drone x is at the depot
        
        f.write("\n")

        for x in range(options.persons):
            for y in range(len(content_types)):
                if need[x][y]:
                    person_name = person[x]
                    content_name = content_types[y]
                    # TODO: write a goal that the person needs a crate
                    # with this specific content
                    f.write("\t\t(humano-satisfecho "+ person_name +" "+ content_name + ")\n")

        f.write("\t\t))\n")

        f.write(")\n")


if __name__ == '__main__':
    main()