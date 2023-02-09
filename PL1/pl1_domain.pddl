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

        (free-gripper ?g - gripper)
        
        (ubi-caja ?c - caja ?u - ubi)
        (caja-en-gripper ?c - caja ?g - gripper)
        
        (caja-en-deposito ?c - caja)
        (tipo-contenido ?c - caja ?con - contenido)

    )

    (:action volar
        :parameters (?d - dron ?u1 - ubi ?u2 - ubi)
        :precondition (and (ubi-dron ?d ?u1) (dron-parado ?d))
        :effect (and (dron-volando ?d) (not(dron-parado ?d)) (not(ubi-dron ?d ?u1)) (ubi-dron ?d ?u2))
    )

    (:action coger_caja
        :parameters (?c - caja ?u - ubi ?d - dron ?con - contenido ?g - gripper)
        :precondition (and (ubi-dron ?d ?u) (ubi-caja ?c ?u) (tipo-contenido ?c ?con) (caja-en-deposito ?c) (free-gripper ?g) (dron-parado ?d))
        :effect (and (not(free-gripper ?g)) (caja-en-gripper ?c ?g) (not(caja-en-deposito ?c)))
    )

    (:action entregar_caja
        :parameters (?c - caja ?u - ubi ?d - dron ?g - gripper ?con - contenido ?h - humano)
        
        :precondition (and (ubi-dron ?d ?u) (caja-en-gripper ?c ?g) (ubi-humano-herido ?h ?u) 
                        (humano-necesita ?h ?con) (tipo-contenido ?c ?con) (dron-parado ?d))
        
        :effect (and (free-gripper ?g) (humano-ha-recibido-contenido ?h ?con ?u))
    )

   

)