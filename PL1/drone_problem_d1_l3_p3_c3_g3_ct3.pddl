(define (problem drone_problem_d1_l3_p3_c3_g3_ct3)
	(:domain pl1_domain)
	(:objects
		dron1 - dron
		brazo1 - brazo
		brazo2 - brazo
		deposito - ubicacion
		mercado - ubicacion
		hospital - ubicacion
		caja1 - caja
		caja2 - caja
		caja3 - caja
		comida - contenido
		medicinas - contenido
		bebida - contenido
		persona1 - humano
		persona2 - humano
		persona3 - humano
	)
	(:init
		(brazo-dron dron1 brazo1)
		(free-brazo dron1 brazo1)
		(brazo-dron dron1 brazo2)
		(free-brazo dron1 brazo2)

		(ubicacion-dron dron1 deposito )

		(ubicacion-humano persona1 mercado )
		(ubicacion-humano persona2 deposito )
		(ubicacion-humano persona3 deposito )

		(contenido-caja caja1 comida)
		(contenido-caja caja2 medicinas)
		(contenido-caja caja3 bebida)

		(humano-necesita persona1 bebida)
		(humano-necesita persona2 comida)
		(humano-necesita persona3 medicinas)
	)
	(:goal (and
		(ubicacion-dron dron1 deposito)

		(humano-satisfecho persona1 bebida)
		(humano-satisfecho persona2 comida)
		(humano-satisfecho persona3 medicinas)
		))
)
