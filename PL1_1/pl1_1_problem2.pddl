(define (problem pl1_problem)
    (:domain pl1_domain)
    (:objects
        humano1 humano2 - humano
        dron1 - dron
        brazo1 brazo2 - brazo
        caja1 caja2 caja3 - caja
        comida medicina bebida - contenido
        deposito campo hospital mercado - ubicacion
        

    )

    (:init

        (ubicacion-dron dron1 deposito)
        
        (brazo-dron dron1 brazo1)
        (brazo-dron dron1 brazo2)

        (free-brazo dron1 brazo1)
        (free-brazo dron1 brazo2)

        (ubicacion-caja caja1 deposito)
        (ubicacion-caja caja2 deposito)
        (ubicacion-caja caja3 deposito)


        (ubicacion-humano humano1 campo)
        (ubicacion-humano humano2 hospital)


        (contenido-caja comida caja1)
        (contenido-caja bebida caja2)
        (contenido-caja medicina caja3)

        (humano-necesita humano1 comida)
        (humano-necesita humano1 bebida)
        (humano-necesita humano2 medicina)

    )

    (:goal 
        (and
            (humano-satisfecho humano1 comida)
            (humano-satisfecho humano1 bebida)
            (humano-satisfecho humano2 medicina) 

            (ubicacion-dron dron1 deposito)
        )
    )
)