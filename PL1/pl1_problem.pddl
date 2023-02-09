(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 - humano
        gripper1 gripper2 - gripper
        dron1 - dron
        caja1 - caja
        comida - contenido
        deposito campo - ubi

    )

    (:init
        (ubi-dron dron1 deposito)
        (ubi-caja caja1 deposito)

        ;(dron-modo-carga-descarga dron1)
        (caja-en-deposito caja1)
        (ubi-humano-herido humano1 campo)

        (contenido-caja comida caja1)
 
        (free-gripper gripper1)
        ;(free-gripper gripper2)

    )

    (:goal
        (and
            (humano-ha-recibido-contenido humano1 comida campo)
            (dron-en-deposito dron1)
        )
    )

)