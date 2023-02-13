(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 humano2 humano3 - humano
        dron1 dron2 - dron
        caja1 caja2 caja3 - caja
        comida medicina bebida - contenido
        deposito campo hospital - ubi

    )

    (:init
        (ubi-dron dron1 deposito)
        ;(ubi-dron dron2 deposito)
        (dron-en-deposito dron1)
        ;(dron-en-deposito dron2)


        (ubi-caja caja1 deposito)
        (ubi-caja caja2 deposito)
        (ubi-caja caja3 deposito)

        (ubi-humano-herido humano1 campo)
        (ubi-humano-herido humano2 hospital)
        ;(ubi-humano-herido humano3 hospital)

        (contenido-caja comida caja1)
        (contenido-caja medicina caja2)
        (contenido-caja bebida caja3)

        (free-brazo1 dron1)
        (free-brazo2 dron1)

        ;(free-brazo1 dron2)
        ;(free-brazo2 dron2)



    )

    (:goal 
        (and
            (humano-ha-recibido-contenido humano1 comida)
            
            (humano-ha-recibido-contenido humano2 medicina)

            ;(humano-ha-recibido-contenido humano3 bebida)
        
            (dron-en-deposito dron1)
            ;(dron-en-deposito dron2)
        )
    )
)