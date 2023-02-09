(define (domain pl1_domain)

    (:requirements :strips :typing)
    (:types
        dron gripper humano caja ubi contenido - object
    )

    
    (:predicates
        (ubi-humano-herido ?h - humano ?u - ubi)
        (humano-necesita ?h - humano ?con - contenido)
        (humano-ha-recibido-contenido ?h - humano ?con - contenido ?u - ubi)

        (ubi-dron ?d - dron ?u - ubi)
        (dron-volando ?d - dron)
        (dron-parado ?d - dron)

        (free-drch)
        (free-izq)
        

        (ubi-caja ?c - caja ?u - ubi)
        (caja-en-dron ?c - caja ?d - dron)
        (caja-en-humano ?c - caja ?h - humano)
        (caja-en-deposito ?c - caja)
        (tipo-contenido ?c - caja ?con - contenido)
    )

    (:action volar
        :parameters (?d - dron ?u1 - ubi ?u2 - ubi)
        :precondition (and (ubi-dron ?d ?u1) (dron-parado ?d))
        :effect (and (dron-volando ?d) (not(dron-parado ?d)) (not(ubi-dron ?d ?u1)) (ubi-dron ?d ?u2))
    )

    (:action coger_caja_drch
        :parameters (?c - caja ?u - ubi ?d - dron)
        :precondition (and (ubi-dron ?d ?u) (ubi-caja ?c ?u) (caja-en-deposito ?c) (free-drch) (dron-parado ?d))
        :effect (and (not(free-drch)) (caja-en-dron ?c ?d) (not(caja-en-deposito ?c)))
    )
    
    (:action coger_caja_izq
        :parameters (?c - caja ?u - ubi ?d - dron)
        :precondition (and (ubi-dron ?d ?u) (ubi-caja ?c ?u) (caja-en-deposito ?c) (free-izq) (dron-parado ?d))
        :effect (and (not(free-izq)) (caja-en-dron ?c ?d) (not(caja-en-deposito ?c)))
    )

    (:action entregar_caja_drch
        :parameters (?c - caja ?u - ubi ?d - dron ?con - contenido ?h - humano)
        
        :precondition (and (ubi-dron ?d ?u) (ubi-caja ?c ?u) (ubi-humano-herido ?h ?u) 
                        (humano-necesita ?h ?con) (tipo-contenido ?c ?con) (caja-en-dron ?c ?d) (dron-parado ?d))
        
        :effect (and (free-drch) (humano-ha-recibido-contenido ?h ?con ?u) (caja-en-humano ?c ?h))
    )

    (:action entregar_caja_izq
        :parameters (?c - caja ?u - ubi ?d - dron ?con - contenido ?h - humano)
        
        :precondition (and (ubi-dron ?d ?u) (ubi-caja ?c ?u) (ubi-humano-herido ?h ?u) 
                        (humano-necesita ?h ?con) (tipo-contenido ?c ?con) (caja-en-dron ?c ?d) (dron-parado ?d))
        
        :effect (and (free-izq) (humano-ha-recibido-contenido ?h ?con ?u) (caja-en-humano ?c ?h))
    )

)