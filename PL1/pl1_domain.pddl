(define (domain pl1_domain)

    (:requirements :strips :typing)
    (:types
        dron gripper humano caja ubi contenido - object
    )

    (:predicates
        (ubi-humano-herido ?h - humano ?u - ubi)
        (humano-ha-recibido-contenido ?h - humano ?con - contenido ?u - ubi)


        (ubi-dron ?d - dron ?u - ubi)
        (dron-volando ?d - dron)
        (dron-modo-carga-descarga ?d - dron)
        (dron-en-deposito ?d - dron)

        (free-gripper ?g - gripper)

        (ubi-caja ?c - caja ?u - ubi)
        (caja-en-gripper ?c - caja ?g - gripper)

        (caja-en-deposito ?c - caja)
        (contenido-caja ?con - contenido ?c - caja)

    )

    (:action coger_caja
        :parameters (?c - caja ?u - ubi ?d - dron ?con - contenido ?g - gripper)
        :precondition (and 
            (ubi-dron ?d ?u) 
            (ubi-caja ?c ?u) 
            (contenido-caja ?con ?c) 
            (caja-en-deposito ?c) 
            (free-gripper ?g) 
            
            )
        :effect (and 
            (not(free-gripper ?g)) 
            (dron-modo-carga-descarga ?d)
            (caja-en-gripper ?c ?g) 
            (not(caja-en-deposito ?c))
            )
    )

    (:action salir_del_deposito
        :parameters (?d - dron ?u1 - ubi ?u2 - ubi ?c - caja ?g - gripper)
        :precondition (and 
            (ubi-dron ?d ?u1)   
            (dron-modo-carga-descarga ?d)
            (caja-en-gripper ?c ?g)
            )
        :effect (and 
            (dron-volando ?d) 
            (not(dron-modo-carga-descarga ?d)) 
            (not(ubi-dron ?d ?u1))
            (ubi-dron ?d ?u2)
            )
    )

    (:action entregar_caja
        :parameters (?c - caja ?u - ubi ?d - dron ?g - gripper ?con - contenido ?h - humano)
        :precondition (and
            (ubi-dron ?d ?u) 
            (caja-en-gripper ?c ?g)
            (ubi-humano-herido ?h ?u)
            (contenido-caja ?con ?c)
            (dron-volando ?d)
            )
        :effect (and
            (free-gripper ?g)
            (dron-modo-carga-descarga ?d)
            (humano-ha-recibido-contenido ?h ?con ?u)
            (not(caja-en-gripper ?c ?g))
            (not(dron-volando ?d))
            )
    )

    (:action regresar_al_deposito
        :parameters (?d - dron ?g - gripper)
        :precondition (and 
            (free-gripper ?g)  
            (dron-modo-carga-descarga ?d)
            )
        :effect (and 
            (dron-en-deposito ?d)
            )
    )
    

)