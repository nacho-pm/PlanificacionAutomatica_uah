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
        (ubicacion-dron dron1 deposito)

        (ubicacion-caja caja1 deposito)

        (ubicacion-humano-herido humano1 campo)

        (contenido-caja comida caja1)

    )

    (:goal
        (and
            (humano-necesita humano1 comida)
            (ubicacion-dron dron1 deposito)
        )
    )

    ;(:metric minimize (total-cost))
)
