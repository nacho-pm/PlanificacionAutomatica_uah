(define (domain pl1_2_domain)
    (:requirements :strips :typing :fluents) 
    (:types
        dron container humano caja ubicacion contenido - object
    )
    (:predicates
        (ubicacion-humano ?h - humano ?u - ubicacion)

        (humano-necesita ?h - humano ?con - contenido)
        
        (humano-satisfecho ?h - humano ?con - contenido)

        (ubicacion-dron ?d - dron ?u - ubicacion)

        (volando ?d - dron)

        (ubicacion-caja ?c - caja ?u - ubicacion)
        (contenido-caja ?con - contenido ?c - caja)

        (peso-contenedor)
    )


    (:action poner-caja-entransportador
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido)
        :precondition (and
 
        )
        :effect (and

        )
    )
        

    (:action mover-transportador 
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido)
        :precondition (and
 
        )
        :effect (and

        )
    )

    (:action  coger-caja-del-transportador
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido)
        :precondition (and
 
        )
        :effect (and

        )
    )


    (:action pick_box
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (ubicacion-caja ?c ?u)
            (contenido-caja ?con ?c)
            (< (peso-contenedor) 2)
        )
        :effect (and
            (caja-en-dron ?c ?d)
            (increase (peso-contenedor) 1)
        )
    )
    (:action volar
        :parameters (?d - dron ?origen - ubicacion ?destino - ubicacion)
        :precondition (and
            (ubicacion-dron ?d ?origen)
        )
        :effect (and
            (not(ubicacion-dron ?d ?origen))
            (ubicacion-dron ?d ?destino)
            (volando ?d)
            (increase (distancia-recorrida) 5) 
        )
    )
    (:action entregar_caja
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido ?h - humano)
        :precondition (and
            (humano-necesita ?h ?con)
            (ubicacion-dron ?d ?u)
            (ubicacion-humano ?h ?u)
            (contenido-caja ?con ?c)
            (caja-en-dron ?c ?d)
            )
        :effect (and
            (not(caja-en-dron ?c ?d))
            (not(humano-necesita ?h ?con))
            (humano-satisfecho ?h ?con)
            (decrease (peso-contenedor) 1)
            )
    )
)