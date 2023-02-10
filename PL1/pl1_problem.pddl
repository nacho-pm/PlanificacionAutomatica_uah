(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 humano2 - humano
        gripper1d gripper1i - gripper
        dron1 - dron
        caja1 caja2 caja3 - caja
        comida bebida medicina - contenido
        deposito campo hospital - ubi

    )

    (:init
        (ubi-dron dron1 deposito)
        (ubi-caja caja1 deposito)
        (ubi-caja caja2 deposito)
        (ubi-caja caja3 deposito)

        (dron-en-deposito dron1)

        (ubi-humano-herido humano1 campo)
        (ubi-humano-herido humano2 campo)

        (contenido-caja comida caja1)
        (contenido-caja bebida caja2)
        (contenido-caja medicina caja3)
 
        (free-gripper-drch gripper1d dron1)
        (free-gripper-izq gripper1i dron1)

    )

    (:goal
        (and
            (humano-ha-recibido-contenido humano1 comida)
            (humano-ha-recibido-contenido humano2 medicina)
            (dron-en-deposito dron1)
        )
    )
)