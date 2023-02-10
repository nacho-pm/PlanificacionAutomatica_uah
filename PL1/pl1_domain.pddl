(define (domain pl1_domain)

    (:requirements :strips :typing)
    (:types
        dron gripper humano caja ubi contenido - object
    )

    (:predicates
        (ubi-humano-herido ?h - humano ?u - ubi)
        (humano-ha-recibido-contenido ?h - humano ?con - contenido)

        (ubi-dron ?d - dron ?u - ubi)
        
        (dron-volando ?d - dron)
        (dron-modo-carga-descarga ?d - dron)   
        (dron-en-deposito ?d - dron)

        (free-gripper-drch ?g - gripper ?d - dron)
        (free-gripper-izq ?g - gripper ?d - dron)
        
        (caja-en-gripper-drch ?c - caja ?g - gripper)
        (caja-en-gripper-izq ?c - caja ?g - gripper)
        (cajas-en-robot)
        (ubi-caja ?c - caja ?u - ubi)
        (contenido-caja ?con - contenido ?c - caja)

    )

    (:action coger_caja_drch
        :parameters (?u - ubi ?d - dron ?g - gripper ?c - caja ?con - contenido)
        :precondition (and 
            (ubi-dron ?d ?u) 
            (ubi-caja ?c ?u)   
            (dron-en-deposito ?d)  
            (contenido-caja ?con ?c)        
            (free-gripper-drch ?g ?d) 
            
            )
        :effect (and 
            (not(free-gripper-drch ?g ?d)) 
            (dron-modo-carga-descarga ?d)
            (caja-en-gripper-drch ?c ?g)
            ) 
            
            
    )

    (:action coger_caja_izq
        :parameters (?u - ubi ?d - dron ?g - gripper ?c - caja ?con - contenido)
        :precondition (and 
            (ubi-dron ?d ?u) 
            (ubi-caja ?c ?u) 
            (dron-en-deposito ?d)
            (contenido-caja ?con ?c) 
            (free-gripper-izq ?g ?d) 
            
            )
        :effect (and 
            (not(free-gripper-izq ?g ?d)) 
            (dron-modo-carga-descarga ?d)
            (caja-en-gripper-izq ?c ?g) 
            
            )
    )


    (:action salir_del_deposito
        :parameters (?d - dron ?u1 - ubi ?u2 - ubi ?c - caja ?gd - gripper)
        :precondition (and 
            (ubi-dron ?d ?u1)
            (dron-en-deposito ?d)
            (caja-en-gripper-drch ?c ?gd) 
            ;(caja-en-gripper-izq ?c ?gi)
        )
        
        :effect (and 
            (dron-volando ?d) 
            (not(dron-en-deposito ?d)) 
            (not(ubi-dron ?d ?u1))
            (ubi-dron ?d ?u2)
        ) 
    )

    (:action salir_del_deposito_lleno
        :parameters (?d - dron ?u1 - ubi ?u2 - ubi ?c - caja ?gd - gripper ?gi - gripper)
        :precondition (and 
            (ubi-dron ?d ?u1)
            (dron-en-deposito ?d)
            (caja-en-gripper-drch ?c ?gd) 
            (caja-en-gripper-izq ?c ?gi)
        )
        
        :effect (and 
            (dron-volando ?d) 
            (not(dron-en-deposito ?d)) 
            (not(ubi-dron ?d ?u1))
            (ubi-dron ?d ?u2)
        ) 
    )



    (:action entregar_caja_drch
        :parameters (?u - ubi ?d - dron ?g - gripper ?c - caja ?con - contenido ?h - humano)
        :precondition (and
            (ubi-dron ?d ?u) 
            (caja-en-gripper-drch ?c ?g)
            (ubi-humano-herido ?h ?u)
            (contenido-caja ?con ?c)
            (dron-volando ?d)
            )
        :effect (and
            (free-gripper-drch ?g ?d)
            (dron-modo-carga-descarga ?d)
            (humano-ha-recibido-contenido ?h ?con)
            (not(caja-en-gripper-drch ?c ?g))
            (not(dron-volando ?d))
            )
    )

    (:action entregar_caja_izq
        :parameters (?u - ubi ?d - dron ?g - gripper ?c - caja ?con - contenido ?h - humano)
        :precondition (and
            (ubi-dron ?d ?u) 
            (caja-en-gripper-izq ?c ?g)
            (ubi-humano-herido ?h ?u)
            (contenido-caja ?con ?c)
            (dron-volando ?d)
            )
        :effect (and
            (free-gripper-izq ?g ?d)
            (dron-modo-carga-descarga ?d)
            (humano-ha-recibido-contenido ?h ?con)
            (not(caja-en-gripper-izq ?c ?g))
            (not(dron-volando ?d))
            )
    )

    (:action regresar_al_deposito
        :parameters (?d - dron ?gd - gripper ?gi - gripper)
        :precondition (and 
            (free-gripper-drch ?gd ?d)
            (free-gripper-izq ?gi ?d)
            ;(dron-modo-carga-descarga ?d)
            )
        :effect (and 
            (dron-en-deposito ?d)
            )
    )
    

)