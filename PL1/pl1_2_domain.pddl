(define (domain pl1_2_domain)
    (:requirements :strips :typing ) 
    (:types
        dron transportador humano caja ubicacion contenido num - object
    )
    (:predicates
        (ubicacion-humano ?h - humano ?u - ubicacion)

        (humano-necesita ?h - humano ?con - contenido)
        
        (humano-satisfecho ?h - humano ?con - contenido)

        (ubicacion-dron ?d - dron ?u - ubicacion)

        (ubicacion-transportador ?t - transportador ?u - ubicacion)
        (tansportador-en-dron ?d - dron ?t - transportador)

        (ubicacion-caja ?c - caja ?u - ubicacion)
        (contenido-caja ?con - contenido ?c - caja)
        (caja-en-dron ?c - caja ?con - contenido ?d - dron)

        (siguiente ?numA ?numB - num)

        (llenado-actual ?t - transportador ?numZ -num)

        (dron-lleno ?d - dron )
        (dron-vacio ?d - dron )

    )


    (:action coger-caja
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (ubicacion-caja ?c ?u)
            (contenido-caja ?con ?c)
            (dron-vacio ?d)
        )
        :effect (and
            (not(dron-vacio ?d))
            (dron-lleno ?d)
            (caja-en-dron ?c ?con ?d)
            
        )
    )

    

    (:action meter-caja-en-transportador
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido ?t - transportador ?desde ?hasta - num)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (ubicacion-transportador ?t ?u)
            (llenado-actual ?t ?desde)
            (siguiente ?desde ?hasta)
            (caja-en-dron ?c ?con ?d)
            (dron-lleno ?d)
        )
        :effect (and
            (not (llenado-actual ?t ?desde))
            (not (caja-en-dron ?c ?con ?d))
            (not (dron-lleno ?d ))
            (llenado-actual ?t ?hasta)
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
            (tansportador-en-dron ?d ?t)
        )
    )
    

    (:action volar-con-transportador 
        :parameters (?origen - ubicacion ?destino - ubicacion ?d - dron ?t - transportador )
        :precondition (and
            (tansportador-en-dron ?d ?t)
            (ubicacion-dron ?d ?origen)
        )
        :effect (and
            (not(ubicacion-dron ?d ?origen))
            (ubicacion-dron ?d ?destino)
        )
    )

    (:action soltar-transportador
        :parameters (?u - ubicacion ?d - dron ?t - transportador)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (tansportador-en-dron ?d ?t)
        )
        :effect (and
            (not(tansportador-en-dron ?d ?t))
            (ubicacion-transportador ?t ?u)
            (dron-vacio ?d)
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
            (not(dron-vacio ?d))
            (dron-lleno ?d)
            (llenado-actual ?t ?desde)
            (caja-en-dron ?c ?con ?d)
        )
    )


    (:action entregar-caja
        :parameters (?h - humano ?u - ubicacion ?d - dron ?c - caja ?con - contenido)
        :precondition (and
            (humano-necesita ?h ?con)
            (ubicacion-dron ?d ?u)
            (ubicacion-humano ?h ?u)
            (contenido-caja ?con ?c)
            (dron-lleno ?d)
            (caja-en-dron ?c ?con ?d)
            )
        :effect (and
            (not(caja-en-dron ?c ?con ?d))
            (not(humano-necesita ?h ?con))
            (not(dron-lleno ?d))
            (humano-satisfecho ?h ?con)
            (dron-vacio ?d)
            )
    )

    
    (:action volar-sin-transportador
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