(define (problem drone_problem_d1_l10_p10_c10_g10_ct3)
	(:domain pl1_2_domain)
	(:objects
		dron1 - dron
		transportador1 - transportador
		n0 - num
		n1 - num
		n2 - num
		n3 - num
		n4 - num
		hospital - ubicacion
		cine - ubicacion
		estadio - ubicacion
		bolera - ubicacion
		teatro - ubicacion
		parque - ubicacion
		campo - ubicacion
		mercado - ubicacion
		ubi9 - ubicacion
		deposito - ubicacion
		caja1 - caja
		caja2 - caja
		caja3 - caja
		caja4 - caja
		caja5 - caja
		caja6 - caja
		caja7 - caja
		caja8 - caja
		caja9 - caja
		caja10 - caja
		comida - contenido
		medicinas - contenido
		bebida - contenido
		persona1 - humano
		persona2 - humano
		persona3 - humano
		persona4 - humano
		persona5 - humano
		persona6 - humano
		persona7 - humano
		persona8 - humano
		persona9 - humano
		persona10 - humano
	)
	(:init
		(siguiente n0 n1 )
		(siguiente n1 n2 )
		(siguiente n2 n3 )
		(siguiente n3 n4 )

		(ubicacion-dron dron1 deposito )

		(ubicacion-transportador transportador1 deposito)

		(llenado-actual transportador n0)
		(ubicacion-humano persona1 cine )
		(ubicacion-humano persona2 estadio )
		(ubicacion-humano persona3 parque )
		(ubicacion-humano persona4 hospital )
		(ubicacion-humano persona5 ubi9 )
		(ubicacion-humano persona6 estadio )
		(ubicacion-humano persona7 hospital )
		(ubicacion-humano persona8 hospital )
		(ubicacion-humano persona9 ubi9 )
		(ubicacion-humano persona10 estadio )

		(contenido-caja comida caja1)
		(contenido-caja comida caja2)
		(contenido-caja comida caja3)
		(contenido-caja comida caja4)
		(contenido-caja comida caja5)
		(contenido-caja comida caja6)
		(contenido-caja medicinas caja7)
		(contenido-caja medicinas caja8)
		(contenido-caja medicinas caja9)
		(contenido-caja bebida caja10)

		(ubicacion-caja caja1 deposito )
		(ubicacion-caja caja2 deposito )
		(ubicacion-caja caja3 deposito )
		(ubicacion-caja caja4 deposito )
		(ubicacion-caja caja5 deposito )
		(ubicacion-caja caja6 deposito )
		(ubicacion-caja caja7 deposito )
		(ubicacion-caja caja8 deposito )
		(ubicacion-caja caja9 deposito )
		(ubicacion-caja caja10 deposito )


		(humano-necesita persona1 comida)
		(humano-necesita persona1 medicinas)
		(humano-necesita persona3 comida)
		(humano-necesita persona4 comida)
		(humano-necesita persona6 comida)
		(humano-necesita persona7 medicinas)
		(humano-necesita persona8 comida)
		(humano-necesita persona8 medicinas)
		(humano-necesita persona9 comida)
		(humano-necesita persona9 bebida)
	)
	(:goal (and
		(ubicacion-dron dron1 deposito)

		(ubicacion-transportador transportador1 deposito)

		(humano-satisfecho persona1 comida)
		(humano-satisfecho persona1 medicinas)
		(humano-satisfecho persona3 comida)
		(humano-satisfecho persona4 comida)
		(humano-satisfecho persona6 comida)
		(humano-satisfecho persona7 medicinas)
		(humano-satisfecho persona8 comida)
		(humano-satisfecho persona8 medicinas)
		(humano-satisfecho persona9 comida)
		(humano-satisfecho persona9 bebida)
	))
)
