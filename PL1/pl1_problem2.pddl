(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 humano2 - humano
        gripper1 gripper2 - gripper
        dron1 - dron
        caja1 caja2 - caja
        comida medicina - contenido
        deposito campo hospital - ubi

    )

    (:init
        (ubi-dron dron1 deposito)
        (dron-en-deposito dron1)

        (ubi-caja caja1 deposito)
        ;(ubi-caja caja2 deposito)

        

        ;(dron-modo-carga-descarga dron1)
        ;(caja-en-deposito caja1)
        ;(caja-en-deposito caja2)

        (ubi-humano-herido humano1 campo)
        ;(ubi-humano-herido humano2 hospital)

        (contenido-caja comida caja1)
        ;(contenido-caja medicina caja2)
 
        ;(free-gripper gripper1)
        ;(free-gripper gripper2)

    )

    (:goal
        (and
            (humano-ha-recibido-contenido humano1 comida campo)
            ;(humano-ha-recibido-contenido humano2 medicina campo)

            ;(dron-volando dron1)
            ;(caja-en-gripper caja1 gripper1)

        )
    )

    ;un-comment the following line if metric is needed
    ;(:metric minimize (???))
)