(define (problem drone_problem_d1_l60_p60_c60_g60_ct3)
	(:domain pl1_domain)
	(:objects
		dron1 - dron
		brazo1 - brazo
		brazo2 - brazo
		hospital - ubicacion
		mercado - ubicacion
		parque - ubicacion
		campo - ubicacion
		teatro - ubicacion
		bolera - ubicacion
		cine - ubicacion
		estadio - ubicacion
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
		ubi50 - ubicacion
		ubi51 - ubicacion
		ubi52 - ubicacion
		ubi53 - ubicacion
		ubi54 - ubicacion
		ubi55 - ubicacion
		ubi56 - ubicacion
		ubi57 - ubicacion
		ubi58 - ubicacion
		ubi59 - ubicacion
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
		caja51 - caja
		caja52 - caja
		caja53 - caja
		caja54 - caja
		caja55 - caja
		caja56 - caja
		caja57 - caja
		caja58 - caja
		caja59 - caja
		caja60 - caja
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
		persona51 - humano
		persona52 - humano
		persona53 - humano
		persona54 - humano
		persona55 - humano
		persona56 - humano
		persona57 - humano
		persona58 - humano
		persona59 - humano
		persona60 - humano
	)
	(:init
		(brazo-dron dron1 brazo1)
		(free-brazo dron1 brazo1)
		(brazo-dron dron1 brazo2)
		(free-brazo dron1 brazo2)

		(ubicacion-dron dron1 deposito )

		(ubicacion-humano persona1 ubi54 )
		(ubicacion-humano persona2 ubi44 )
		(ubicacion-humano persona3 ubi25 )
		(ubicacion-humano persona4 ubi46 )
		(ubicacion-humano persona5 ubi15 )
		(ubicacion-humano persona6 ubi18 )
		(ubicacion-humano persona7 ubi42 )
		(ubicacion-humano persona8 ubi12 )
		(ubicacion-humano persona9 ubi9 )
		(ubicacion-humano persona10 ubi9 )
		(ubicacion-humano persona11 ubi18 )
		(ubicacion-humano persona12 campo )
		(ubicacion-humano persona13 ubi40 )
		(ubicacion-humano persona14 ubi32 )
		(ubicacion-humano persona15 ubi52 )
		(ubicacion-humano persona16 mercado )
		(ubicacion-humano persona17 ubi41 )
		(ubicacion-humano persona18 ubi35 )
		(ubicacion-humano persona19 ubi30 )
		(ubicacion-humano persona20 ubi43 )
		(ubicacion-humano persona21 ubi37 )
		(ubicacion-humano persona22 ubi25 )
		(ubicacion-humano persona23 teatro )
		(ubicacion-humano persona24 ubi21 )
		(ubicacion-humano persona25 ubi57 )
		(ubicacion-humano persona26 ubi15 )
		(ubicacion-humano persona27 ubi28 )
		(ubicacion-humano persona28 ubi57 )
		(ubicacion-humano persona29 ubi38 )
		(ubicacion-humano persona30 ubi22 )
		(ubicacion-humano persona31 ubi13 )
		(ubicacion-humano persona32 ubi52 )
		(ubicacion-humano persona33 ubi42 )
		(ubicacion-humano persona34 ubi51 )
		(ubicacion-humano persona35 ubi38 )
		(ubicacion-humano persona36 ubi32 )
		(ubicacion-humano persona37 campo )
		(ubicacion-humano persona38 ubi35 )
		(ubicacion-humano persona39 ubi48 )
		(ubicacion-humano persona40 ubi26 )
		(ubicacion-humano persona41 ubi30 )
		(ubicacion-humano persona42 ubi31 )
		(ubicacion-humano persona43 ubi47 )
		(ubicacion-humano persona44 ubi47 )
		(ubicacion-humano persona45 bolera )
		(ubicacion-humano persona46 ubi55 )
		(ubicacion-humano persona47 ubi26 )
		(ubicacion-humano persona48 estadio )
		(ubicacion-humano persona49 ubi40 )
		(ubicacion-humano persona50 ubi28 )
		(ubicacion-humano persona51 ubi14 )
		(ubicacion-humano persona52 ubi55 )
		(ubicacion-humano persona53 estadio )
		(ubicacion-humano persona54 ubi15 )
		(ubicacion-humano persona55 ubi11 )
		(ubicacion-humano persona56 ubi48 )
		(ubicacion-humano persona57 ubi46 )
		(ubicacion-humano persona58 ubi30 )
		(ubicacion-humano persona59 ubi44 )
		(ubicacion-humano persona60 ubi59 )

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
		(contenido-caja medicinas caja33)
		(contenido-caja medicinas caja34)
		(contenido-caja medicinas caja35)
		(contenido-caja medicinas caja36)
		(contenido-caja medicinas caja37)
		(contenido-caja medicinas caja38)
		(contenido-caja medicinas caja39)
		(contenido-caja medicinas caja40)
		(contenido-caja medicinas caja41)
		(contenido-caja medicinas caja42)
		(contenido-caja medicinas caja43)
		(contenido-caja medicinas caja44)
		(contenido-caja medicinas caja45)
		(contenido-caja medicinas caja46)
		(contenido-caja medicinas caja47)
		(contenido-caja medicinas caja48)
		(contenido-caja medicinas caja49)
		(contenido-caja medicinas caja50)
		(contenido-caja medicinas caja51)
		(contenido-caja medicinas caja52)
		(contenido-caja medicinas caja53)
		(contenido-caja medicinas caja54)
		(contenido-caja medicinas caja55)
		(contenido-caja medicinas caja56)
		(contenido-caja bebida caja57)
		(contenido-caja bebida caja58)
		(contenido-caja bebida caja59)
		(contenido-caja bebida caja60)

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
		(ubicacion-caja caja51 deposito )
		(ubicacion-caja caja52 deposito )
		(ubicacion-caja caja53 deposito )
		(ubicacion-caja caja54 deposito )
		(ubicacion-caja caja55 deposito )
		(ubicacion-caja caja56 deposito )
		(ubicacion-caja caja57 deposito )
		(ubicacion-caja caja58 deposito )
		(ubicacion-caja caja59 deposito )
		(ubicacion-caja caja60 deposito )


		(humano-necesita persona1 medicinas)
		(humano-necesita persona3 medicinas)
		(humano-necesita persona4 comida)
		(humano-necesita persona5 medicinas)
		(humano-necesita persona6 comida)
		(humano-necesita persona6 medicinas)
		(humano-necesita persona8 comida)
		(humano-necesita persona8 medicinas)
		(humano-necesita persona10 medicinas)
		(humano-necesita persona12 comida)
		(humano-necesita persona12 bebida)
		(humano-necesita persona13 comida)
		(humano-necesita persona14 medicinas)
		(humano-necesita persona15 comida)
		(humano-necesita persona16 medicinas)
		(humano-necesita persona17 medicinas)
		(humano-necesita persona18 comida)
		(humano-necesita persona18 medicinas)
		(humano-necesita persona19 comida)
		(humano-necesita persona19 medicinas)
		(humano-necesita persona20 comida)
		(humano-necesita persona21 comida)
		(humano-necesita persona21 medicinas)
		(humano-necesita persona22 comida)
		(humano-necesita persona24 medicinas)
		(humano-necesita persona25 comida)
		(humano-necesita persona25 medicinas)
		(humano-necesita persona26 medicinas)
		(humano-necesita persona27 medicinas)
		(humano-necesita persona28 medicinas)
		(humano-necesita persona29 comida)
		(humano-necesita persona31 medicinas)
		(humano-necesita persona32 comida)
		(humano-necesita persona33 medicinas)
		(humano-necesita persona34 medicinas)
		(humano-necesita persona35 medicinas)
		(humano-necesita persona36 bebida)
		(humano-necesita persona37 medicinas)
		(humano-necesita persona39 comida)
		(humano-necesita persona40 medicinas)
		(humano-necesita persona40 bebida)
		(humano-necesita persona41 comida)
		(humano-necesita persona42 medicinas)
		(humano-necesita persona44 bebida)
		(humano-necesita persona45 comida)
		(humano-necesita persona45 medicinas)
		(humano-necesita persona46 medicinas)
		(humano-necesita persona47 comida)
		(humano-necesita persona48 medicinas)
		(humano-necesita persona49 medicinas)
		(humano-necesita persona50 medicinas)
		(humano-necesita persona51 comida)
		(humano-necesita persona52 comida)
		(humano-necesita persona52 medicinas)
		(humano-necesita persona53 medicinas)
		(humano-necesita persona55 medicinas)
		(humano-necesita persona56 medicinas)
		(humano-necesita persona57 medicinas)
		(humano-necesita persona58 medicinas)
		(humano-necesita persona60 medicinas)
	)
	(:goal (and
		(ubicacion-dron dron1 deposito)

		(humano-satisfecho persona1 medicinas)
		(humano-satisfecho persona3 medicinas)
		(humano-satisfecho persona4 comida)
		(humano-satisfecho persona5 medicinas)
		(humano-satisfecho persona6 comida)
		(humano-satisfecho persona6 medicinas)
		(humano-satisfecho persona8 comida)
		(humano-satisfecho persona8 medicinas)
		(humano-satisfecho persona10 medicinas)
		(humano-satisfecho persona12 comida)
		(humano-satisfecho persona12 bebida)
		(humano-satisfecho persona13 comida)
		(humano-satisfecho persona14 medicinas)
		(humano-satisfecho persona15 comida)
		(humano-satisfecho persona16 medicinas)
		(humano-satisfecho persona17 medicinas)
		(humano-satisfecho persona18 comida)
		(humano-satisfecho persona18 medicinas)
		(humano-satisfecho persona19 comida)
		(humano-satisfecho persona19 medicinas)
		(humano-satisfecho persona20 comida)
		(humano-satisfecho persona21 comida)
		(humano-satisfecho persona21 medicinas)
		(humano-satisfecho persona22 comida)
		(humano-satisfecho persona24 medicinas)
		(humano-satisfecho persona25 comida)
		(humano-satisfecho persona25 medicinas)
		(humano-satisfecho persona26 medicinas)
		(humano-satisfecho persona27 medicinas)
		(humano-satisfecho persona28 medicinas)
		(humano-satisfecho persona29 comida)
		(humano-satisfecho persona31 medicinas)
		(humano-satisfecho persona32 comida)
		(humano-satisfecho persona33 medicinas)
		(humano-satisfecho persona34 medicinas)
		(humano-satisfecho persona35 medicinas)
		(humano-satisfecho persona36 bebida)
		(humano-satisfecho persona37 medicinas)
		(humano-satisfecho persona39 comida)
		(humano-satisfecho persona40 medicinas)
		(humano-satisfecho persona40 bebida)
		(humano-satisfecho persona41 comida)
		(humano-satisfecho persona42 medicinas)
		(humano-satisfecho persona44 bebida)
		(humano-satisfecho persona45 comida)
		(humano-satisfecho persona45 medicinas)
		(humano-satisfecho persona46 medicinas)
		(humano-satisfecho persona47 comida)
		(humano-satisfecho persona48 medicinas)
		(humano-satisfecho persona49 medicinas)
		(humano-satisfecho persona50 medicinas)
		(humano-satisfecho persona51 comida)
		(humano-satisfecho persona52 comida)
		(humano-satisfecho persona52 medicinas)
		(humano-satisfecho persona53 medicinas)
		(humano-satisfecho persona55 medicinas)
		(humano-satisfecho persona56 medicinas)
		(humano-satisfecho persona57 medicinas)
		(humano-satisfecho persona58 medicinas)
		(humano-satisfecho persona60 medicinas)
	))
)
