(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 - humano
        dron1 - dron
        caja1 caja2 - caja
        comida - contenido
        deposito campo - ubicacion

    )

    (:init
        (= (distancia-recorrida) 0)
        (= (peso-cajas) 0)

        (ubicacion-dron dron1 deposito)

        (ubicacion-caja caja1 deposito)

        (ubicacion-humano humano1 campo)

        (contenido-caja comida caja1)

        (humano-necesita humano1 comida)

    )

    (:goal
        (and
            (humano-satisfecho humano1 comida)
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
