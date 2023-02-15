(define (domain pl1_domain)

    (:requirements :strips :typing)
    (:types
        dron humano caja ubicacion contenido - object
    )

    (:predicates
        (ubicacion-humano-herido ?h - humano ?u - ubicacion)
        (humano-necesita ?h - humano ?con - contenido)

        (ubicacion-dron ?d - dron ?u - ubicacion)

        (volando ?d - dron)
        (parado ?d - dron)

        ;(dron-lleno ?d - dron)
        ;(dron-medio-lleno ?d - dron)

        (ubicacion-caja ?c - caja ?u - ubicacion)
        (contenido-caja ?con - contenido ?c - caja)
        (caja-en-dron ?c - caja ?d - dron)

    )

    ;total_cost que no tenga paramaetros
    ;-----------------------acciones------------------------------


    (:action coger_cajas
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido ?c2 - caja ?con2 - contenido)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (ubicacion-caja ?c ?u)
            (contenido-caja ?con ?c)
            (ubicacion-caja ?c2 ?u)
            (contenido-caja ?con2 ?c2)
        )
        :effect (and
            (caja-en-dron ?c ?d)
            (caja-en-dron ?c2 ?d)
        )
    )


    (:action volar
        :parameters (?d - dron ?u1 - ubicacion ?u2 - ubicacion)
        :precondition (and
            (ubicacion-dron ?d ?u1)
        )
        :effect (and
            (not(ubicacion-dron ?d ?u1))
            (ubicacion-dron ?d ?u2)
            (volando ?d)
        )
    )

    (:action entregar_caja
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido ?h - humano)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (ubicacion-humano-herido ?h ?u)
            (contenido-caja ?con ?c)
            (caja-en-dron ?c ?d)
            )
        :effect (and
            (humano-necesita ?h ?con)
            )
    )



)