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

        (ubicacion-caja caja1 deposito)
        (ubicacion-caja caja2 deposito)
        (ubicacion-caja caja3 deposito)

        (ubicacion-humano-herido humano1 campo)
        (ubicacion-humano-herido humano1 campo)
        (ubicacion-humano-herido humano2 hospital)

        (contenido-caja comida caja1)
        (contenido-caja medicina caja2)
        (contenido-caja bebida caja3)



    )

    (:goal 
        (and
            (humano-necesita humano1 comida)
            (humano-necesita humano2 medicina)
            (humano-necesita humano1 bebida)
            (ubicacion-dron dron1 deposito)
        )
    )
)