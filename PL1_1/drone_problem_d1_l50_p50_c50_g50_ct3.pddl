(define (problem drone_problem_d1_l50_p50_c50_g50_ct3)
	(:domain pl1_domain)
	(:objects
		dron1 - dron
		brazo1 - brazo
		brazo2 - brazo
		cine - ubicacion
		parque - ubicacion
		campo - ubicacion
		estadio - ubicacion
		hospital - ubicacion
		teatro - ubicacion
		mercado - ubicacion
		bolera - ubicacion
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
		ubi40 - ubicacion
		ubi41 - ubicacion
		ubi42 - ubicacion
		ubi43 - ubicacion
		ubi44 - ubicacion
		ubi45 - ubicacion
		ubi46 - ubicacion
		ubi47 - ubicacion
		ubi48 - ubicacion
		ubi49 - ubicacion
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
		caja41 - caja
		caja42 - caja
		caja43 - caja
		caja44 - caja
		caja45 - caja
		caja46 - caja
		caja47 - caja
		caja48 - caja
		caja49 - caja
		caja50 - caja
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
		persona41 - humano
		persona42 - humano
		persona43 - humano
		persona44 - humano
		persona45 - humano
		persona46 - humano
		persona47 - humano
		persona48 - humano
		persona49 - humano
		persona50 - humano
	)
	(:init
		(brazo-dron dron1 brazo1)
		(free-brazo dron1 brazo1)
		(brazo-dron dron1 brazo2)
		(free-brazo dron1 brazo2)

		(ubicacion-dron dron1 deposito )

		(ubicacion-humano persona1 ubi18 )
		(ubicacion-humano persona2 parque )
		(ubicacion-humano persona3 campo )
		(ubicacion-humano persona4 bolera )
		(ubicacion-humano persona5 ubi19 )
		(ubicacion-humano persona6 ubi36 )
		(ubicacion-humano persona7 ubi30 )
		(ubicacion-humano persona8 ubi11 )
		(ubicacion-humano persona9 mercado )
		(ubicacion-humano persona10 ubi14 )
		(ubicacion-humano persona11 ubi37 )
		(ubicacion-humano persona12 estadio )
		(ubicacion-humano persona13 ubi31 )
		(ubicacion-humano persona14 ubi30 )
		(ubicacion-humano persona15 ubi33 )
		(ubicacion-humano persona16 teatro )
		(ubicacion-humano persona17 ubi13 )
		(ubicacion-humano persona18 campo )
		(ubicacion-humano persona19 ubi29 )
		(ubicacion-humano persona20 ubi24 )
		(ubicacion-humano persona21 hospital )
		(ubicacion-humano persona22 ubi45 )
		(ubicacion-humano persona23 ubi32 )
		(ubicacion-humano persona24 ubi41 )
		(ubicacion-humano persona25 ubi34 )
		(ubicacion-humano persona26 ubi26 )
		(ubicacion-humano persona27 ubi25 )
		(ubicacion-humano persona28 ubi13 )
		(ubicacion-humano persona29 ubi36 )
		(ubicacion-humano persona30 ubi14 )
		(ubicacion-humano persona31 ubi42 )
		(ubicacion-humano persona32 ubi15 )
		(ubicacion-humano persona33 ubi46 )
		(ubicacion-humano persona34 mercado )
		(ubicacion-humano persona35 ubi10 )
		(ubicacion-humano persona36 ubi25 )
		(ubicacion-humano persona37 ubi48 )
		(ubicacion-humano persona38 mercado )
		(ubicacion-humano persona39 ubi31 )
		(ubicacion-humano persona40 ubi48 )
		(ubicacion-humano persona41 ubi44 )
		(ubicacion-humano persona42 ubi12 )
		(ubicacion-humano persona43 ubi47 )
		(ubicacion-humano persona44 ubi42 )
		(ubicacion-humano persona45 ubi27 )
		(ubicacion-humano persona46 ubi32 )
		(ubicacion-humano persona47 ubi25 )
		(ubicacion-humano persona48 teatro )
		(ubicacion-humano persona49 ubi44 )
		(ubicacion-humano persona50 ubi15 )

		(contenido-caja comida caja1)
		(contenido-caja comida caja2)
		(contenido-caja comida caja3)
		(contenido-caja comida caja4)
		(contenido-caja comida caja5)
		(contenido-caja comida caja6)
		(contenido-caja comida caja7)
		(contenido-caja medicinas caja8)
		(contenido-caja medicinas caja9)
		(contenido-caja medicinas caja10)
		(contenido-caja medicinas caja11)
		(contenido-caja medicinas caja12)
		(contenido-caja medicinas caja13)
		(contenido-caja medicinas caja14)
		(contenido-caja medicinas caja15)
		(contenido-caja medicinas caja16)
		(contenido-caja medicinas caja17)
		(contenido-caja medicinas caja18)
		(contenido-caja medicinas caja19)
		(contenido-caja medicinas caja20)
		(contenido-caja medicinas caja21)
		(contenido-caja medicinas caja22)
		(contenido-caja medicinas caja23)
		(contenido-caja medicinas caja24)
		(contenido-caja medicinas caja25)
		(contenido-caja medicinas caja26)
		(contenido-caja medicinas caja27)
		(contenido-caja medicinas caja28)
		(contenido-caja medicinas caja29)
		(contenido-caja medicinas caja30)
		(contenido-caja medicinas caja31)
		(contenido-caja medicinas caja32)
		(contenido-caja bebida caja33)
		(contenido-caja bebida caja34)
		(contenido-caja bebida caja35)
		(contenido-caja bebida caja36)
		(contenido-caja bebida caja37)
		(contenido-caja bebida caja38)
		(contenido-caja bebida caja39)
		(contenido-caja bebida caja40)
		(contenido-caja bebida caja41)
		(contenido-caja bebida caja42)
		(contenido-caja bebida caja43)
		(contenido-caja bebida caja44)
		(contenido-caja bebida caja45)
		(contenido-caja bebida caja46)
		(contenido-caja bebida caja47)
		(contenido-caja bebida caja48)
		(contenido-caja bebida caja49)
		(contenido-caja bebida caja50)

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
		(ubicacion-caja caja41 deposito )
		(ubicacion-caja caja42 deposito )
		(ubicacion-caja caja43 deposito )
		(ubicacion-caja caja44 deposito )
		(ubicacion-caja caja45 deposito )
		(ubicacion-caja caja46 deposito )
		(ubicacion-caja caja47 deposito )
		(ubicacion-caja caja48 deposito )
		(ubicacion-caja caja49 deposito )
		(ubicacion-caja caja50 deposito )


		(humano-necesita persona1 comida)
		(humano-necesita persona1 bebida)
		(humano-necesita persona3 medicinas)
		(humano-necesita persona3 bebida)
		(humano-necesita persona4 comida)
		(humano-necesita persona4 medicinas)
		(humano-necesita persona5 comida)
		(humano-necesita persona5 medicinas)
		(humano-necesita persona5 bebida)
		(humano-necesita persona6 medicinas)
		(humano-necesita persona7 medicinas)
		(humano-necesita persona8 bebida)
		(humano-necesita persona9 bebida)
		(humano-necesita persona13 comida)
		(humano-necesita persona14 medicinas)
		(humano-necesita persona15 medicinas)
		(humano-necesita persona15 bebida)
		(humano-necesita persona16 medicinas)
		(humano-necesita persona17 medicinas)
		(humano-necesita persona17 bebida)
		(humano-necesita persona18 bebida)
		(humano-necesita persona19 medicinas)
		(humano-necesita persona20 medicinas)
		(humano-necesita persona22 comida)
		(humano-necesita persona22 bebida)
		(humano-necesita persona25 comida)
		(humano-necesita persona25 medicinas)
		(humano-necesita persona25 bebida)
		(humano-necesita persona26 medicinas)
		(humano-necesita persona27 medicinas)
		(humano-necesita persona29 medicinas)
		(humano-necesita persona30 comida)
		(humano-necesita persona30 medicinas)
		(humano-necesita persona30 bebida)
		(humano-necesita persona31 medicinas)
		(humano-necesita persona32 bebida)
		(humano-necesita persona33 medicinas)
		(humano-necesita persona33 bebida)
		(humano-necesita persona35 medicinas)
		(humano-necesita persona36 medicinas)
		(humano-necesita persona37 bebida)
		(humano-necesita persona38 medicinas)
		(humano-necesita persona39 medicinas)
		(humano-necesita persona39 bebida)
		(humano-necesita persona42 medicinas)
		(humano-necesita persona42 bebida)
		(humano-necesita persona44 medicinas)
		(humano-necesita persona46 medicinas)
		(humano-necesita persona48 bebida)
		(humano-necesita persona50 bebida)
	)
	(:goal (and
		(ubicacion-dron dron1 deposito)

		(humano-satisfecho persona1 comida)
		(humano-satisfecho persona1 bebida)
		(humano-satisfecho persona3 medicinas)
		(humano-satisfecho persona3 bebida)
		(humano-satisfecho persona4 comida)
		(humano-satisfecho persona4 medicinas)
		(humano-satisfecho persona5 comida)
		(humano-satisfecho persona5 medicinas)
		(humano-satisfecho persona5 bebida)
		(humano-satisfecho persona6 medicinas)
		(humano-satisfecho persona7 medicinas)
		(humano-satisfecho persona8 bebida)
		(humano-satisfecho persona9 bebida)
		(humano-satisfecho persona13 comida)
		(humano-satisfecho persona14 medicinas)
		(humano-satisfecho persona15 medicinas)
		(humano-satisfecho persona15 bebida)
		(humano-satisfecho persona16 medicinas)
		(humano-satisfecho persona17 medicinas)
		(humano-satisfecho persona17 bebida)
		(humano-satisfecho persona18 bebida)
		(humano-satisfecho persona19 medicinas)
		(humano-satisfecho persona20 medicinas)
		(humano-satisfecho persona22 comida)
		(humano-satisfecho persona22 bebida)
		(humano-satisfecho persona25 comida)
		(humano-satisfecho persona25 medicinas)
		(humano-satisfecho persona25 bebida)
		(humano-satisfecho persona26 medicinas)
		(humano-satisfecho persona27 medicinas)
		(humano-satisfecho persona29 medicinas)
		(humano-satisfecho persona30 comida)
		(humano-satisfecho persona30 medicinas)
		(humano-satisfecho persona30 bebida)
		(humano-satisfecho persona31 medicinas)
		(humano-satisfecho persona32 bebida)
		(humano-satisfecho persona33 medicinas)
		(humano-satisfecho persona33 bebida)
		(humano-satisfecho persona35 medicinas)
		(humano-satisfecho persona36 medicinas)
		(humano-satisfecho persona37 bebida)
		(humano-satisfecho persona38 medicinas)
		(humano-satisfecho persona39 medicinas)
		(humano-satisfecho persona39 bebida)
		(humano-satisfecho persona42 medicinas)
		(humano-satisfecho persona42 bebida)
		(humano-satisfecho persona44 medicinas)
		(humano-satisfecho persona46 medicinas)
		(humano-satisfecho persona48 bebida)
		(humano-satisfecho persona50 bebida)
	))
)
