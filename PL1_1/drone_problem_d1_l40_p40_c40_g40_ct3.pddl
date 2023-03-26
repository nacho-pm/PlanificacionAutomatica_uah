(define (problem drone_problem_d1_l40_p40_c40_g40_ct3)
	(:domain pl1_domain)
	(:objects
		dron1 - dron
		brazo1 - brazo
		brazo2 - brazo
		teatro - ubicacion
		estadio - ubicacion
		cine - ubicacion
		campo - ubicacion
		mercado - ubicacion
		parque - ubicacion
		bolera - ubicacion
		hospital - ubicacion
		ubi9 - ubicacion
		ubi10 - ubicacion
		ubi11 - ubicacion
		ubi12 - ubicacion
		ubi13 - ubicacion
		ubi14 - ubicacion
		ubi15 - ubicacion
		ubi16 - ubicacion
		ubi17 - ubicacion
		ubi18 - ubicacion
		ubi19 - ubicacion
		ubi20 - ubicacion
		ubi21 - ubicacion
		ubi22 - ubicacion
		ubi23 - ubicacion
		ubi24 - ubicacion
		ubi25 - ubicacion
		ubi26 - ubicacion
		ubi27 - ubicacion
		ubi28 - ubicacion
		ubi29 - ubicacion
		ubi30 - ubicacion
		ubi31 - ubicacion
		ubi32 - ubicacion
		ubi33 - ubicacion
		ubi34 - ubicacion
		ubi35 - ubicacion
		ubi36 - ubicacion
		ubi37 - ubicacion
		ubi38 - ubicacion
		ubi39 - ubicacion
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
		caja11 - caja
		caja12 - caja
		caja13 - caja
		caja14 - caja
		caja15 - caja
		caja16 - caja
		caja17 - caja
		caja18 - caja
		caja19 - caja
		caja20 - caja
		caja21 - caja
		caja22 - caja
		caja23 - caja
		caja24 - caja
		caja25 - caja
		caja26 - caja
		caja27 - caja
		caja28 - caja
		caja29 - caja
		caja30 - caja
		caja31 - caja
		caja32 - caja
		caja33 - caja
		caja34 - caja
		caja35 - caja
		caja36 - caja
		caja37 - caja
		caja38 - caja
		caja39 - caja
		caja40 - caja
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
		persona11 - humano
		persona12 - humano
		persona13 - humano
		persona14 - humano
		persona15 - humano
		persona16 - humano
		persona17 - humano
		persona18 - humano
		persona19 - humano
		persona20 - humano
		persona21 - humano
		persona22 - humano
		persona23 - humano
		persona24 - humano
		persona25 - humano
		persona26 - humano
		persona27 - humano
		persona28 - humano
		persona29 - humano
		persona30 - humano
		persona31 - humano
		persona32 - humano
		persona33 - humano
		persona34 - humano
		persona35 - humano
		persona36 - humano
		persona37 - humano
		persona38 - humano
		persona39 - humano
		persona40 - humano
	)
	(:init
		(brazo-dron dron1 brazo1)
		(free-brazo dron1 brazo1)
		(brazo-dron dron1 brazo2)
		(free-brazo dron1 brazo2)

		(ubicacion-dron dron1 deposito )

		(ubicacion-humano persona1 ubi30 )
		(ubicacion-humano persona2 ubi31 )
		(ubicacion-humano persona3 ubi23 )
		(ubicacion-humano persona4 ubi11 )
		(ubicacion-humano persona5 ubi29 )
		(ubicacion-humano persona6 ubi31 )
		(ubicacion-humano persona7 ubi34 )
		(ubicacion-humano persona8 campo )
		(ubicacion-humano persona9 ubi38 )
		(ubicacion-humano persona10 ubi35 )
		(ubicacion-humano persona11 ubi23 )
		(ubicacion-humano persona12 ubi29 )
		(ubicacion-humano persona13 ubi19 )
		(ubicacion-humano persona14 ubi23 )
		(ubicacion-humano persona15 parque )
		(ubicacion-humano persona16 ubi22 )
		(ubicacion-humano persona17 ubi25 )
		(ubicacion-humano persona18 ubi16 )
		(ubicacion-humano persona19 ubi16 )
		(ubicacion-humano persona20 cine )
		(ubicacion-humano persona21 ubi17 )
		(ubicacion-humano persona22 ubi14 )
		(ubicacion-humano persona23 ubi14 )
		(ubicacion-humano persona24 ubi10 )
		(ubicacion-humano persona25 teatro )
		(ubicacion-humano persona26 ubi27 )
		(ubicacion-humano persona27 mercado )
		(ubicacion-humano persona28 campo )
		(ubicacion-humano persona29 ubi29 )
		(ubicacion-humano persona30 ubi12 )
		(ubicacion-humano persona31 ubi37 )
		(ubicacion-humano persona32 hospital )
		(ubicacion-humano persona33 ubi27 )
		(ubicacion-humano persona34 ubi34 )
		(ubicacion-humano persona35 ubi22 )
		(ubicacion-humano persona36 ubi15 )
		(ubicacion-humano persona37 mercado )
		(ubicacion-humano persona38 ubi36 )
		(ubicacion-humano persona39 ubi30 )
		(ubicacion-humano persona40 bolera )

		(contenido-caja comida caja1)
		(contenido-caja comida caja2)
		(contenido-caja comida caja3)
		(contenido-caja comida caja4)
		(contenido-caja comida caja5)
		(contenido-caja comida caja6)
		(contenido-caja comida caja7)
		(contenido-caja comida caja8)
		(contenido-caja comida caja9)
		(contenido-caja comida caja10)
		(contenido-caja comida caja11)
		(contenido-caja comida caja12)
		(contenido-caja comida caja13)
		(contenido-caja comida caja14)
		(contenido-caja comida caja15)
		(contenido-caja comida caja16)
		(contenido-caja comida caja17)
		(contenido-caja comida caja18)
		(contenido-caja comida caja19)
		(contenido-caja comida caja20)
		(contenido-caja comida caja21)
		(contenido-caja comida caja22)
		(contenido-caja comida caja23)
		(contenido-caja comida caja24)
		(contenido-caja comida caja25)
		(contenido-caja comida caja26)
		(contenido-caja comida caja27)
		(contenido-caja comida caja28)
		(contenido-caja comida caja29)
		(contenido-caja comida caja30)
		(contenido-caja comida caja31)
		(contenido-caja comida caja32)
		(contenido-caja medicinas caja33)
		(contenido-caja medicinas caja34)
		(contenido-caja medicinas caja35)
		(contenido-caja medicinas caja36)
		(contenido-caja bebida caja37)
		(contenido-caja bebida caja38)
		(contenido-caja bebida caja39)
		(contenido-caja bebida caja40)

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
		(ubicacion-caja caja11 deposito )
		(ubicacion-caja caja12 deposito )
		(ubicacion-caja caja13 deposito )
		(ubicacion-caja caja14 deposito )
		(ubicacion-caja caja15 deposito )
		(ubicacion-caja caja16 deposito )
		(ubicacion-caja caja17 deposito )
		(ubicacion-caja caja18 deposito )
		(ubicacion-caja caja19 deposito )
		(ubicacion-caja caja20 deposito )
		(ubicacion-caja caja21 deposito )
		(ubicacion-caja caja22 deposito )
		(ubicacion-caja caja23 deposito )
		(ubicacion-caja caja24 deposito )
		(ubicacion-caja caja25 deposito )
		(ubicacion-caja caja26 deposito )
		(ubicacion-caja caja27 deposito )
		(ubicacion-caja caja28 deposito )
		(ubicacion-caja caja29 deposito )
		(ubicacion-caja caja30 deposito )
		(ubicacion-caja caja31 deposito )
		(ubicacion-caja caja32 deposito )
		(ubicacion-caja caja33 deposito )
		(ubicacion-caja caja34 deposito )
		(ubicacion-caja caja35 deposito )
		(ubicacion-caja caja36 deposito )
		(ubicacion-caja caja37 deposito )
		(ubicacion-caja caja38 deposito )
		(ubicacion-caja caja39 deposito )
		(ubicacion-caja caja40 deposito )


		(humano-necesita persona2 comida)
		(humano-necesita persona2 medicinas)
		(humano-necesita persona3 bebida)
		(humano-necesita persona4 comida)
		(humano-necesita persona5 comida)
		(humano-necesita persona6 comida)
		(humano-necesita persona7 comida)
		(humano-necesita persona8 comida)
		(humano-necesita persona9 comida)
		(humano-necesita persona10 comida)
		(humano-necesita persona10 bebida)
		(humano-necesita persona11 comida)
		(humano-necesita persona13 comida)
		(humano-necesita persona14 comida)
		(humano-necesita persona15 comida)
		(humano-necesita persona16 comida)
		(humano-necesita persona17 comida)
		(humano-necesita persona17 bebida)
		(humano-necesita persona18 comida)
		(humano-necesita persona19 comida)
		(humano-necesita persona20 comida)
		(humano-necesita persona21 comida)
		(humano-necesita persona23 comida)
		(humano-necesita persona24 comida)
		(humano-necesita persona24 bebida)
		(humano-necesita persona26 comida)
		(humano-necesita persona26 medicinas)
		(humano-necesita persona27 comida)
		(humano-necesita persona29 comida)
		(humano-necesita persona29 medicinas)
		(humano-necesita persona30 comida)
		(humano-necesita persona31 comida)
		(humano-necesita persona33 comida)
		(humano-necesita persona35 comida)
		(humano-necesita persona35 medicinas)
		(humano-necesita persona36 comida)
		(humano-necesita persona37 comida)
		(humano-necesita persona38 comida)
		(humano-necesita persona39 comida)
		(humano-necesita persona40 comida)
	)
	(:goal (and
		(ubicacion-dron dron1 deposito)

		(humano-satisfecho persona2 comida)
		(humano-satisfecho persona2 medicinas)
		(humano-satisfecho persona3 bebida)
		(humano-satisfecho persona4 comida)
		(humano-satisfecho persona5 comida)
		(humano-satisfecho persona6 comida)
		(humano-satisfecho persona7 comida)
		(humano-satisfecho persona8 comida)
		(humano-satisfecho persona9 comida)
		(humano-satisfecho persona10 comida)
		(humano-satisfecho persona10 bebida)
		(humano-satisfecho persona11 comida)
		(humano-satisfecho persona13 comida)
		(humano-satisfecho persona14 comida)
		(humano-satisfecho persona15 comida)
		(humano-satisfecho persona16 comida)
		(humano-satisfecho persona17 comida)
		(humano-satisfecho persona17 bebida)
		(humano-satisfecho persona18 comida)
		(humano-satisfecho persona19 comida)
		(humano-satisfecho persona20 comida)
		(humano-satisfecho persona21 comida)
		(humano-satisfecho persona23 comida)
		(humano-satisfecho persona24 comida)
		(humano-satisfecho persona24 bebida)
		(humano-satisfecho persona26 comida)
		(humano-satisfecho persona26 medicinas)
		(humano-satisfecho persona27 comida)
		(humano-satisfecho persona29 comida)
		(humano-satisfecho persona29 medicinas)
		(humano-satisfecho persona30 comida)
		(humano-satisfecho persona31 comida)
		(humano-satisfecho persona33 comida)
		(humano-satisfecho persona35 comida)
		(humano-satisfecho persona35 medicinas)
		(humano-satisfecho persona36 comida)
		(humano-satisfecho persona37 comida)
		(humano-satisfecho persona38 comida)
		(humano-satisfecho persona39 comida)
		(humano-satisfecho persona40 comida)
	))
)
