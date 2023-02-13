(define (domain pl1_domain)

    (:requirements :strips :typing)
    (:types
        dron humano caja ubi contenido - object
    )

    (:predicates
        (ubi-humano-herido ?h - humano ?u - ubi)
        (humano-ha-recibido-contenido ?h - humano ?con - contenido)

        (ubi-dron ?d - dron ?u - ubi)

        (dron-volando ?d - dron)
        (dron-modo-descarga ?d - dron)
        (dron-en-deposito ?d - dron)

        (dron-lleno ?d - dron)
        (dron-medio-lleno ?d - dron)

        (free-brazo1 ?d - dron)
        (free-brazo2 ?d - dron)

        (brazo1-lleno ?d - dron ?c - caja ?con - contenido)
        (brazo2-lleno ?d - dron ?c - caja ?con - contenido)

        (ubi-caja ?c - caja ?u - ubi)
        (contenido-caja ?con - contenido ?c - caja)

    )

    ;-----------------------acciones------------------------------

    (:action volar_a_otra_ubicacion
        :parameters (?d - dron ?u1 - ubi ?u2 - ubi)
        :precondition (and
            (ubi-dron ?d ?u1)
            (dron-modo-descarga ?d)
        )
        :effect (and
            (not(ubi-dron ?d ?u1))
            (not(dron-modo-descarga ?d))
            (ubi-dron ?d ?u2)
            (dron-volando ?d)
        )
    )

    (:action entregar_con_brazo1
        :parameters (?u - ubi ?d - dron ?c - caja ?con - contenido ?h - humano)
        :precondition (and
            (ubi-dron ?d ?u)
            (ubi-humano-herido ?h ?u)
            (contenido-caja ?con ?c)
            (dron-volando ?d)
            (brazo1-lleno ?d ?c ?con)
        )
        :effect (and
            (not(brazo1-lleno ?d ?c ?con))
            (not(dron-volando ?d))
            (free-brazo1 ?d)
            (dron-modo-descarga ?d)
            (humano-ha-recibido-contenido ?h ?con)

        )
    )

    (:action entregar_con_brazo2
        :parameters (?u - ubi ?d - dron ?c - caja ?con - contenido ?h - humano)
        :precondition (and
            (ubi-dron ?d ?u)
            (ubi-humano-herido ?h ?u)
            (contenido-caja ?con ?c)
            (dron-volando ?d)
            (brazo2-lleno ?d ?c ?con)
        )
        :effect (and
            (not(brazo2-lleno ?d ?c ?con))
            (not(dron-volando ?d))
            (free-brazo2 ?d)
            (dron-modo-descarga ?d)
            (humano-ha-recibido-contenido ?h ?con)

        )
    )

    (:action coger_cajas
        :parameters (?u - ubi ?d - dron ?c - caja ?con - contenido ?c2 - caja ?con2 - contenido)
        :precondition (and
            (dron-en-deposito ?d)
            (ubi-dron ?d ?u)
            (ubi-caja ?c ?u)
            (contenido-caja ?con ?c)
            (ubi-caja ?c2 ?u)
            (contenido-caja ?con2 ?c2)
            (free-brazo1 ?d)
            (free-brazo2 ?d)
        )
        :effect (and
            (not(ubi-caja ?c ?u))
            (not(ubi-caja ?c2 ?u))
            (not(free-brazo1 ?d))
            (not(free-brazo2 ?d))
            (brazo1-lleno ?d ?c ?con)
            (brazo2-lleno ?d ?c2 ?con2)
            (dron-lleno ?d)
        )
    )

    (:action coger_caja
        :parameters (?u - ubi ?d - dron ?c - caja ?con - contenido)
        :precondition (and
            (dron-en-deposito ?d)
            (ubi-dron ?d ?u)
            (ubi-caja ?c ?u)
            (contenido-caja ?con ?c)
            (free-brazo1 ?d)
        )
        :effect (and
            (not(ubi-caja ?c ?u))
            (not(free-brazo1 ?d))
            (brazo1-lleno ?d ?c ?con)
            (dron-medio-lleno ?d)
        )
    )

    (:action salir_del_deposito_medio_lleno
        :parameters (?d - dron ?u1 - ubi ?u2 - ubi)
        :precondition (and
            (dron-medio-lleno ?d)
            (ubi-dron ?d ?u1)
            (dron-en-deposito ?d)
        )
        :effect (and
            (dron-volando ?d)
            (not(dron-en-deposito ?d))
            (not(ubi-dron ?d ?u1))
            (ubi-dron ?d ?u2)
        )
    )

    (:action salir_del_deposito_lleno
        :parameters (?d - dron ?u1 - ubi ?u2 - ubi)
        :precondition (and
            (dron-lleno ?d)
            (ubi-dron ?d ?u1)
            (dron-en-deposito ?d)
        )
        :effect (and
            (dron-volando ?d)
            (not(dron-en-deposito ?d))
            (not(ubi-dron ?d ?u1))
            (ubi-dron ?d ?u2)
        )
    )

    (:action volver_al_deposito
        :parameters (?d - dron)
        :precondition (and
            (free-brazo1 ?d)
            (free-brazo2 ?d)
            (dron-modo-descarga ?d)
        )
        :effect (and
            (dron-en-deposito ?d)
            (not(dron-modo-descarga ?d))
        )
    )

)