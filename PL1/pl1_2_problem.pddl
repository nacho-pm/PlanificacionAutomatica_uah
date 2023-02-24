(define (problem pl1_2_problema)
    (:domain pl1_2_domain)
    (:objects

        n0 n1 n2 n3 n4 - num
        humano1 humano2 humano3 humano4 humano5 - humano
        dron1 - dron
        caja1 caja2 caja3 caja4 caja5 caja6 - caja
        comida - contenido
        bebida - contenido
        medicinas - contenido
        deposito campo - ubicacion
        transportador1 - transportador
    )

    (:init
        (siguiente n0 n1)
        (siguiente n1 n2)
        (siguiente n2 n3)
        (siguiente n3 n4)

        (ubicacion-dron dron1 deposito)

        (ubicacion-caja caja1 deposito)
        (ubicacion-caja caja2 deposito)
        (ubicacion-caja caja3 deposito)
        (ubicacion-caja caja4 deposito)
        (ubicacion-caja caja5 deposito)
        (ubicacion-caja caja6 deposito)

        (ubicacion-transportador transportador1 deposito)

        (dron-vacio dron1)

        (ubicacion-humano humano1 campo)
        (ubicacion-humano humano2 campo)
        (ubicacion-humano humano3 campo)
        (ubicacion-humano humano4 campo)
        (ubicacion-humano humano5 campo)

        (contenido-caja comida caja1)
        (contenido-caja bebida caja2)
        (contenido-caja comida caja3)
        (contenido-caja medicinas caja4)
        (contenido-caja bebida caja5)
        (contenido-caja medicinas caja6)

        (humano-necesita humano1 comida)
        (humano-necesita humano1 medicinas)
        (humano-necesita humano2 bebida)
        (humano-necesita humano3 comida)
        (humano-necesita humano4 medicinas)
        (humano-necesita humano5 bebida)
    )

    (:goal
        (and
            (humano-satisfecho humano1 comida)
            (humano-satisfecho humano1 medicinas)
            (humano-satisfecho humano2 bebida)
            (humano-satisfecho humano3 comida)
            (humano-satisfecho humano4 medicinas)
            (humano-satisfecho humano5 bebida)
            (ubicacion-dron dron1 deposito)
            (ubicacion-transportador transportador1 deposito)
        )
    )
)