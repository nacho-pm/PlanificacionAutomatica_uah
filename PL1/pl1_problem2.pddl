(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 humano2 humano3 - humano
        dron1 dron2 - dron
        caja1 caja2 caja3 - caja
        comida medicina bebida - contenido
        deposito campo hospital - ubicacion

    )

    (:init
        (ubicacion-dron dron1 deposito)
        ;(ubicacion-dron dron2 deposito)
        (at-deposito dron1)
        ;(dron-en-deposito dron2)


        (ubicacion-caja caja1 deposito)
        (ubicacion-caja caja2 deposito)
        (ubicacion-caja caja3 deposito)

        (ubicacion-humano-herido humano1 campo)
        (ubicacion-humano-herido humano2 hospital)
        ;(ubicacion-humano-herido humano3 hospital)

        (contenido-caja comida caja1)
        (contenido-caja medicina caja2)
        (contenido-caja bebida caja3)

        (free-b1 dron1)
        (free-b2 dron1)

        ;(free-brazo1 dron2)
        ;(free-brazo2 dron2)



    )

    (:goal 
        (and
            (humano-ha-recibido-contenido humano1 comida)
            
            (humano-ha-recibido-contenido humano2 medicina)

            ;(humano-ha-recibido-contenido humano3 bebida)
        
            (at-deposito dron1)
            ;(dron-en-deposito dron2)
        )
    )
)