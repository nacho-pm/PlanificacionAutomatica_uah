(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 humano2 - humano
        dron1 dron2 - dron
        caja1 caja2 caja3 caja4 - caja
        comida medicina bebida - contenido
        deposito campo hospital mercado - ubicacion

    )

    (:init
        (= (distancia-recorrida) 0)
        (= (brazos-ocupados) 0)

        (ubicacion-dron dron1 deposito)

        (ubicacion-caja caja1 deposito)
        (ubicacion-caja caja2 deposito)
        (ubicacion-caja caja4 deposito)


        (ubicacion-humano humano1 campo)
        (ubicacion-humano humano2 campo)


        (contenido-caja comida caja1)
        (contenido-caja bebida caja2)
        (contenido-caja medicina caja4)

        (humano-necesita humano1 comida)
        (humano-necesita humano1 bebida)
        (humano-necesita humano2 medicina)

    )

    (:goal 
        (and
            (ubicacion-dron dron1 deposito)
            (humano-satisfecho humano1 comida)
            (humano-satisfecho humano1 bebida)
            (humano-satisfecho humano2 medicina) 
        )
    )

    (:metric minimize 
        (+
        (distancia-recorrida)
        (brazos-ocupados)
        )

    )
)