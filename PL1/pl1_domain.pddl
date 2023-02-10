(define (domain pl1_domain)

    (:requirements :strips :typing :negative-preconditions)
    (:types
        dron humano caja ubi contenido - object
    )

    (:predicates
        (ubi-humano-herido ?h - humano ?u - ubi)
        (humano-ha-recibido-contenido ?h - humano ?con - contenido)

        (ubi-dron ?d - dron ?u - ubi)
        
        (dron-volando ?d - dron)
        (dron-modo-carga-descarga ?d - dron)   
        (dron-en-deposito ?d - dron)
        (dron-cargadob1 ?d - dron)
        (dron-cargadob2 ?d - dron)
        
        (free-brazo1 ?d - dron)
        (free-brazo2 ?d - dron)

        (brazo1-lleno ?d - dron ?c - caja ?con - contenido)
        (brazo2-lleno ?d - dron ?c - caja ?con - contenido)
        
        (ubi-caja ?c - caja ?u - ubi)
        (contenido-caja ?con - contenido ?c - caja)

    )

    (:action coger_con_brazo1
        :parameters (?u - ubi ?d - dron ?c - caja ?con - contenido)
        :precondition (and 
            (dron-en-deposito ?d) 
            (ubi-dron ?d ?u) 
            (ubi-caja ?c ?u)   
            (contenido-caja ?con ?c)  
            (free-brazo1 ?d)
            )
        :effect (and 
            (brazo1-lleno ?d ?c ?con)
            (not(ubi-caja ?c ?u))
            (not(free-brazo1 ?d))
            (dron-modo-carga-descarga ?d)
            (dron-cargadob1 ?d)
            )         
    )

    (:action coger_con_brazo2
        :parameters (?u - ubi ?d - dron ?c - caja ?con - contenido)
        :precondition (and 
            (dron-en-deposito ?d) 
            (ubi-dron ?d ?u) 
            (ubi-caja ?c ?u)   
            (contenido-caja ?con ?c) 
            (free-brazo2 ?d) 
            )
        :effect (and 
            (brazo2-lleno ?d ?c ?con)
            (not(ubi-caja ?c ?u))
            (not(free-brazo2 ?d))
            (dron-modo-carga-descarga ?d)
            (dron-cargadob2 ?d)
            )         
    )

    (:action salir_del_deposito_cargado_entero
        :parameters (?d - dron ?u1 - ubi ?u2 - ubi)
        :precondition (and 
            (ubi-dron ?d ?u1)
            (dron-en-deposito ?d)
            (dron-modo-carga-descarga ?d)
            (dron-cargadob1 ?d)
            (dron-cargadob2 ?d)
        )
        
        :effect (and 
            (dron-volando ?d) 
            (not(dron-en-deposito ?d)) 
            (not(ubi-dron ?d ?u1))
            (ubi-dron ?d ?u2)
        ) 
    )
    (:action salir_del_deposito_cargado_mitad
        :parameters (?d - dron ?u1 - ubi ?u2 - ubi)
        :precondition (and 
            (ubi-dron ?d ?u1)
            (dron-en-deposito ?d)
            (dron-modo-carga-descarga ?d)
            (dron-cargadob1 ?d)
        )
        
        :effect (and 
            (dron-volando ?d) 
            (not(dron-en-deposito ?d)) 
            (not(ubi-dron ?d ?u1))
            (ubi-dron ?d ?u2)
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
            (free-brazo1 ?d)
            (dron-modo-carga-descarga ?d)
            (humano-ha-recibido-contenido ?h ?con)
            (not(dron-volando ?d))
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
            (free-brazo2 ?d)
            (dron-modo-carga-descarga ?d)
            (humano-ha-recibido-contenido ?h ?con)
            (not(dron-volando ?d))
            )
    )

    

    (:action regresar_al_deposito
        :parameters (?d - dron)
        :precondition (and 
            (free-brazo1 ?d)
            (free-brazo2 ?d)
            (dron-modo-carga-descarga ?d)
            )
        :effect (and 
            (dron-en-deposito ?d)
            )
    )
    

)