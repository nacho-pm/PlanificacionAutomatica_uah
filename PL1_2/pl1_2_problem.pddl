(define (problem pl1_2_problem) (:domain pl1_2_domain)
(:objects 

    n0 n1 n2 n3 n4 - num
    humano1 humano2 humano3 humano4 humano5 - humano
    dron1 - dron
    caja1 caja2 caja3 caja4 caja5 caja6 - caja
    comida - contenido
    bebida - contenido
    medicinas - contenido
    deposito campo fiesta teatro - ubicacion
    transportador1 - transportador
)

(:init
    (=(coste-vuelo deposito campo) 5)
    (=(coste-total) 0)
    (siguiente n0 n1)
    (siguiente n1 n2)
    (siguiente n2 n3)
    (siguiente n3 n4)

    (ubicacion-dron dron1 deposito)

    (ubicacion-transportador transportador1 deposito)

    (llenado-actual transportador1 n0)

    (ubicacion-caja caja1 deposito)
    (ubicacion-caja caja2 deposito)
    (ubicacion-caja caja3 deposito)
    (ubicacion-caja caja4 deposito)
    (ubicacion-caja caja5 deposito)
    (ubicacion-caja caja6 deposito)
    

    (ubicacion-humano humano1 campo)
    (ubicacion-humano humano2 campo)
    (ubicacion-humano humano3 fiesta)
    (ubicacion-humano humano4 teatro)
    (ubicacion-humano humano5 fiesta)

    (dron-vacio dron1)

    (contenido-caja caja1 comida)
    (contenido-caja caja2 bebida)
    (contenido-caja caja3 medicinas)
    (contenido-caja caja4 comida)
    (contenido-caja caja5 medicinas)
    (contenido-caja caja6 bebida)


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

    (:metric minimize (coste-total))
)