(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 - humano
        dron1 - dron
        brazo1 brazo2 - brazo
        caja1 caja2 - caja
        comida - contenido
        deposito campo - ubicacion

    )

    (:init

        (ubicacion-dron dron1 deposito)
        (ubicacion-caja caja1 deposito)

        (brazo-dron dron1 brazo1)
        (brazo-dron dron1 brazo2)

        (free-brazo dron1 brazo1)
        (free-brazo dron1 brazo2)

        (ubicacion-humano humano1 campo)

        (contenido-caja comida caja1)
        (contenido-caja comida caja2)

        (humano-necesita humano1 comida)

    )

    (:goal
        (and
            (humano-satisfecho humano1 comida)
            (ubicacion-dron dron1 deposito)
        )
    )
)
