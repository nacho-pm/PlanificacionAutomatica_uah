(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 humano2 humano3 - humano
        dron1 dron2 - dron
        caja1 caja2 caja3 caja4 - caja
        comida medicina bebida - contenido
        deposito campo hospital mercado - ubicacion

    )

    (:init
        (= (distancia-recorrida) 0)
        (= (peso-cajas) 0)

        (ubicacion-dron dron1 deposito)

        (ubicacion-caja caja1 deposito)
        (ubicacion-caja caja2 deposito)
        (ubicacion-caja caja3 deposito)
        (ubicacion-caja caja4 deposito)


        (ubicacion-humano-herido humano1 campo)
        (ubicacion-humano-herido humano2 hospital)
        (ubicacion-humano-herido humano3 mercado)


        (contenido-caja comida caja1)
        (contenido-caja bebida caja2)
        (contenido-caja bebida caja3)
        (contenido-caja medicina caja4)

    )

    (:goal 
        (and
            (humano-necesita humano1 comida)
            (humano-necesita humano1 bebida)
            (humano-necesita humano2 medicina)
            (ubicacion-dron dron1 deposito)
        )
    )

    (:metric minimize 
        (+
        (distancia-recorrida)
        (peso-cajas)
        )

    )
)