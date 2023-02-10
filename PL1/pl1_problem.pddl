(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 - humano
        dron1 - dron
        caja1 - caja
        comida - contenido
        deposito campo - ubi

    )

    (:init
        (ubi-dron dron1 deposito)
        (ubi-caja caja1 deposito)

        (dron-en-deposito dron1)
        (ubi-humano-herido humano1 campo)

        (contenido-caja comida caja1)

        (free-brazo1 dron1)
        (free-brazo2 dron1)

    )

    (:goal
        (and
            (humano-ha-recibido-contenido humano1 comida)
            (dron-en-deposito dron1)
        )
    )
)