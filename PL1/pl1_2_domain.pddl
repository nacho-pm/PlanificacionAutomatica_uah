(define (domain pl1_2_domain)
    (:requirements :strips :typing ) 
    (:types
        dron transportador humano caja ubicacion contenido num - object
    )
    (:predicates
        (ubicacion-humano ?h - humano ?u - ubicacion)

        (ubicacion-dron ?d - dron ?u - ubicacion)

        (ubicacion-transportador ?t - transportador ?u - ubicacion)

        (ubicacion-caja ?c - caja ?u - ubicacion)
        (contenido-caja ?c - caja ?con - contenido )

        (siguiente ?numA ?numB - num)

        (llenado-actual ?t - transportador ?numZ -num)

        (dron-vacio ?d - dron )
        (trasportador-en-dron ?t - transportador ?d - dron)
        (caja-en-dron ?c - caja ?d - dron)

        (humano-necesita ?h - humano ?con - contenido)
        
        (humano-satisfecho ?h - humano ?con - contenido)

    )


   (:action pick_box
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido ?t - transportador ?numA - num ?numB - num)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (ubicacion-caja ?c ?u)
            (contenido-caja ?c ?con)
            (dron-vacio ?d)
        )
        :effect (and
            (caja-en-dron ?c ?d)
            (not(dron-vacio ?d))
            (not (ubicacion-caja ?c ?u))
        )
    )

    (:action poner-caja-en-transportador
        :parameters (?u - ubicacion ?d - dron ?c - caja ?t - transportador ?desde ?hasta - num)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (ubicacion-transportador ?t ?u)
            (llenado-actual ?t ?desde)
            (siguiente ?desde ?hasta)
            (caja-en-dron ?c ?d)
        )
        :effect (and
            (not (llenado-actual ?t ?desde))
            (llenado-actual ?t ?hasta)
            (not (caja-en-dron ?c ?d))
            (dron-vacio ?d)
        )
    )


    (:action coger-transportador 
        :parameters (?u - ubicacion ?d - dron ?t - transportador)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (ubicacion-transportador ?t ?u)
            (dron-vacio ?d)
        )
        :effect (and
            (not(dron-vacio ?d))
            (trasportador-en-dron ?t ?d)
        )
    )

    (:action mover-transportador 
        :parameters (?origen ?destino - ubicacion ?t - transportador  ?d - dron)
        :precondition (and
            (ubicacion-dron ?d ?origen)
            (ubicacion-transportador ?t ?origen)
            (trasportador-en-dron ?t ?d)
        )
        :effect (and
            (not(ubicacion-dron ?d ?origen))
            (not(ubicacion-transportador ?t ?origen))
            (ubicacion-dron ?d ?destino)
            (ubicacion-transportador ?t ?destino)
        )
    )


    (:action soltar-transportador 
        :parameters (?u - ubicacion ?d - dron ?t - transportador)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (ubicacion-transportador ?t ?u)
            (trasportador-en-dron ?t ?d)
            (trasportador-en-dron ?t ?d)
        )
        :effect (and
            (dron-vacio ?d)
            (not(trasportador-en-dron ?t ?d))
        )
    )

    
    (:action  coger-caja-del-transportador
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido ?t - transportador ?desde ?hasta - num)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (ubicacion-transportador ?t ?u)
            (llenado-actual ?t ?hasta)
            (siguiente ?hasta ?desde)
            (dron-vacio ?d)
        )
        :effect (and
            (not (llenado-actual ?t ?hasta))
            (llenado-actual ?t ?desde)
            (caja-en-dron ?c ?d)
            (not(dron-vacio ?d))
        )
    )


    (:action entregar-caja-dron
        :parameters (?h - humano ?u - ubicacion ?d - dron ?c - caja ?con - contenido ?t - transportador ?numA - num ?numB - num)
        :precondition (and
            (humano-necesita ?h ?con)
            (ubicacion-dron ?d ?u)
            (ubicacion-humano ?h ?u)
            (contenido-caja ?c ?con)
            (caja-en-dron ?c ?d)
            )
        :effect (and
            (not(caja-en-dron ?c ?d))
            (dron-vacio ?d)
            (not(humano-necesita ?h ?con))
            (humano-satisfecho ?h ?con)
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
        )
    )
    
)