(define (domain pl1_domain)

    (:requirements :strips :typing)
    (:types
        dron brazo humano caja ubicacion contenido - object
    )

    (:predicates
        (ubicacion-humano ?h - humano ?u - ubicacion)

        (humano-necesita ?h - humano ?con - contenido)
        
        (humano-satisfecho ?h - humano ?con - contenido)

        (ubicacion-dron ?d - dron ?u - ubicacion)

        (brazo-ocupado ?d - dron ?b - brazo ?c - caja ?con - contenido)
        (free-brazo ?d - dron ?b - brazo)
        (brazo-dron ?d - dron ?b - brazo)

        (ubicacion-caja ?c - caja ?u - ubicacion)
        (contenido-caja ?con - contenido ?c - caja)

    )


    (:action coger_caja
        :parameters (?u - ubicacion ?d - dron ?b - brazo ?c - caja ?con - contenido)
        :precondition (and
            (brazo-dron ?d ?b)
            (ubicacion-dron ?d ?u)
            (ubicacion-caja ?c ?u)
            (contenido-caja ?con ?c)
            (free-brazo ?d ?b)
        )
        :effect (and
            (not(free-brazo ?d ?b))
            (brazo-ocupado ?d ?b ?c ?con)
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

    (:action entregar_caja
        :parameters (?u - ubicacion ?d - dron ?b - brazo ?c - caja ?con - contenido ?h - humano)
        :precondition (and
            (humano-necesita ?h ?con)
            (ubicacion-dron ?d ?u)
            (ubicacion-humano ?h ?u)
            (contenido-caja ?con ?c)
            (brazo-ocupado ?d ?b ?c ?con)
            )
        :effect (and
            (not(humano-necesita ?h ?con))
            (not(brazo-ocupado ?d ?b ?c ?con))
            (free-brazo ?d ?b)
            (humano-satisfecho ?h ?con)
            )
    )

)