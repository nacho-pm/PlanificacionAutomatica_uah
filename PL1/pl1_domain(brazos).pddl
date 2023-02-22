(define (domain pl1_domain_brazos))

    (:requirements :strips :typing :fluents)
    (:types
        dron humano caja ubicacion contenido - object
    )
    (:predicates
        (ubicacion-humano-herido ?h - humano ?u - ubicacion)
        (humano-ha-recibido-contenido ?h - humano ?con - contenido)
        (ubicacion-dron ?d - dron ?u - ubicacion)
        (volando ?d - dron)
        (descargando ?d - dron)
        (at-deposito ?d - dron)
        (dron-lleno ?d - dron)
        (dron-medio-lleno ?d - dron)
        (free-b1 ?d - dron)
        (free-b2 ?d - dron)
        (b1-lleno ?d - dron ?c - caja ?con - contenido)
        (b2-lleno ?d - dron ?c - caja ?con - contenido)
        (ubicacion-caja ?c - caja ?u - ubicacion)
        (contenido-caja ?con - contenido ?c - caja)
    )

    (:predicates
        (ubicacion-humano ?h - humano ?u - ubicacion)
        (humano-necesita ?h - humano ?con - contenido)
        (humano-satisfecho ?h - humano ?con - contenido)

        (ubicacion-dron ?d - dron ?u - ubicacion)

        (volando ?d - dron)

        (ubicacion-caja ?c - caja ?u - ubicacion)
        (contenido-caja ?con - contenido ?c - caja)
        (caja-en-dron ?c - caja ?d - dron)

    )

    ;---functions
    (:functions
        (distancia-recorrida)
        (peso-cajas)
    )

    ;---acciones
    (:action volar_a_otra_ubicacion
        :parameters (?d - dron ?u1 - ubicacion ?u2 - ubicacion)
        :precondition (and
            (ubicacion-dron ?d ?u1)
            (descargando ?d)
        )
        :effect (and
            (not(ubicacion-dron ?d ?u1))
            (not(descargando ?d))
            (ubicacion-dron ?d ?u2)
            (volando ?d)
        )
    )
    (:action entregar_con_brazo1
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido ?h - humano)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (ubicacion-humano-herido ?h ?u)
            (contenido-caja ?con ?c)
            (volando ?d)
            (b1-lleno ?d ?c ?con)
        )
        :effect (and
            (not(b1-lleno ?d ?c ?con))
            (not(volando ?d))
            (free-b1 ?d)
            (descargando ?d)
            (humano-ha-recibido-contenido ?h ?con)
        )
    )
    (:action entregar_con_brazo2
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido ?h - humano)
        :precondition (and
            (ubicacion-dron ?d ?u)
            (ubicacion-humano-herido ?h ?u)
            (contenido-caja ?con ?c)
            (volando ?d)
            (b2-lleno ?d ?c ?con)
        )
        :effect (and
            (not(b2-lleno ?d ?c ?con))
            (not(volando ?d))
            (free-b2 ?d)
            (descargando ?d)
            (humano-ha-recibido-contenido ?h ?con)
        )
    )
    (:action coger_cajas
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido ?c2 - caja ?con2 - contenido)
        :precondition (and
            (at-deposito ?d)
            (ubicacion-dron ?d ?u)
            (ubicacion-caja ?c ?u)
            (contenido-caja ?con ?c)
            (ubicacion-caja ?c2 ?u)
            (contenido-caja ?con2 ?c2)
            (free-b1 ?d)
            (free-b2 ?d)
        )
        :effect (and
            (not(ubicacion-caja ?c ?u))
            (not(ubicacion-caja ?c2 ?u))
            (not(free-b1 ?d))
            (not(free-b2 ?d))
            (b1-lleno ?d ?c ?con)
            (b2-lleno ?d ?c2 ?con2)
            (dron-lleno ?d)
        )
    )
    (:action coger_caja
        :parameters (?u - ubicacion ?d - dron ?c - caja ?con - contenido)
        :precondition (and
            (at-deposito ?d)
            (ubicacion-dron ?d ?u)
            (ubicacion-caja ?c ?u)
            (contenido-caja ?con ?c)
            (free-b1 ?d)
        )
        :effect (and
            (not(ubicacion-caja ?c ?u))
            (not(free-b1 ?d))
            (b1-lleno ?d ?c ?con)
            (dron-medio-lleno ?d)
        )
    )
    (:action salir_del_deposito_medio_lleno
        :parameters (?d - dron ?u1 - ubicacion ?u2 - ubicacion)
        :precondition (and
            (dron-medio-lleno ?d)
            (ubicacion-dron ?d ?u1)
            (at-deposito ?d)
        )
        :effect (and
            (volando ?d)
            (not(at-deposito ?d))
            (not(ubicacion-dron ?d ?u1))
            (ubicacion-dron ?d ?u2)
        )
    )
    (:action salir_del_deposito_lleno
        :parameters (?d - dron ?u1 - ubicacion ?u2 - ubicacion)
        :precondition (and
            (dron-lleno ?d)
            (ubicacion-dron ?d ?u1)
            (at-deposito ?d)
        )
        :effect (and
            (volando ?d)
            (not(at-deposito ?d))
            (not(ubicacion-dron ?d ?u1))
            (ubicacion-dron ?d ?u2)
        )
    )
    (:action volver_al_deposito
        :parameters (?d - dron)
        :precondition (and
            (free-b1 ?d)
            (free-b2 ?d)
            (descargando ?d)
        )
        :effect (and
            (at-deposito ?d)
            (not(descargando ?d))
        )
    )
)