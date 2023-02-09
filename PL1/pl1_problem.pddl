(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 - humano
        gdrch1 gizq1 - gripper
        dron1 - dron
        caja1 - caja
        comida - contenido
        deposito campo - ubi

    )

    (:init
        (ubi-dron dron1 deposito)
        (ubi-humano-herido humano1 campo)
        (ubi-caja caja1 deposito)

        (tipo-contenido caja1 comida)

        (gripper-drch gdrch1 dron1)
        (gripper-izq gizq1 dron1) 
        (free-drch)
        (free-drch)

    )

    (:goal
        (and
            (humano-ha-recibido-contenido humano1 comida campo)
            (caja-en-humano caja1 humano1)

        )
    )

    ;un-comment the following line if metric is needed
    ;(:metric minimize (???))
)