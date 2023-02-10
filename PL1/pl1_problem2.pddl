(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 humano2 - humano
        dron1 - dron
        caja1 caja2 caja3 - caja
        comida medicina bebida - contenido
        deposito campo merendero - ubi

    )

    (:init
        (ubi-dron dron1 deposito)
        (dron-en-deposito dron1)

        (ubi-caja caja1 deposito)
        (ubi-caja caja2 deposito)
        (ubi-caja caja3 deposito)

        (ubi-humano-herido humano1 campo)
        (ubi-humano-herido humano2 merendero)

        (contenido-caja comida caja1)
        (contenido-caja medicina caja2)
        (contenido-caja bebida caja3)

        (free-brazo1 dron1)
        (free-brazo2 dron1)



    )

    (:goal 
        (and
            (humano-ha-recibido-contenido humano1 medicina)
            
            (humano-ha-recibido-contenido humano2 comida)
        
            (dron-en-deposito dron1)
        )
    )
)