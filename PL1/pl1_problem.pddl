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


        (at-deposito dron1)
        (ubicacion-humano-herido humano1 campo)

        (contenido-caja comida caja1)

        (free-b1 dron1)
        (free-b2 dron1)

    )

    (:goal
        (and
            (humano-ha-recibido-contenido humano1 comida)
            (at-deposito dron1)
        )
    )
)
