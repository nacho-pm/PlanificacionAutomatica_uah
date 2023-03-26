(define (problem drone_problem_d1_l80_p80_c80_g80_ct3)
	(:domain pl1_domain)
	(:objects
		dron1 - dron
		brazo1 - brazo
		brazo2 - brazo
		hospital - ubicacion
		parque - ubicacion
		estadio - ubicacion
		mercado - ubicacion
		campo - ubicacion
		teatro - ubicacion
		bolera - ubicacion
		cine - ubicacion
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
		ubi60 - ubicacion
		ubi61 - ubicacion
		ubi62 - ubicacion
		ubi63 - ubicacion
		ubi64 - ubicacion
		ubi65 - ubicacion
		ubi66 - ubicacion
		ubi67 - ubicacion
		ubi68 - ubicacion
		ubi69 - ubicacion
		ubi70 - ubicacion
		ubi71 - ubicacion
		ubi72 - ubicacion
		ubi73 - ubicacion
		ubi74 - ubicacion
		ubi75 - ubicacion
		ubi76 - ubicacion
		ubi77 - ubicacion
		ubi78 - ubicacion
		ubi79 - ubicacion
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
		caja61 - caja
		caja62 - caja
		caja63 - caja
		caja64 - caja
		caja65 - caja
		caja66 - caja
		caja67 - caja
		caja68 - caja
		caja69 - caja
		caja70 - caja
		caja71 - caja
		caja72 - caja
		caja73 - caja
		caja74 - caja
		caja75 - caja
		caja76 - caja
		caja77 - caja
		caja78 - caja
		caja79 - caja
		caja80 - caja
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
		persona61 - humano
		persona62 - humano
		persona63 - humano
		persona64 - humano
		persona65 - humano
		persona66 - humano
		persona67 - humano
		persona68 - humano
		persona69 - humano
		persona70 - humano
		persona71 - humano
		persona72 - humano
		persona73 - humano
		persona74 - humano
		persona75 - humano
		persona76 - humano
		persona77 - humano
		persona78 - humano
		persona79 - humano
		persona80 - humano
	)
	(:init
		(brazo-dron dron1 brazo1)
		(free-brazo dron1 brazo1)
		(brazo-dron dron1 brazo2)
		(free-brazo dron1 brazo2)

		(ubicacion-dron dron1 deposito )

		(ubicacion-humano persona1 ubi49 )
		(ubicacion-humano persona2 ubi68 )
		(ubicacion-humano persona3 hospital )
		(ubicacion-humano persona4 ubi51 )
		(ubicacion-humano persona5 campo )
		(ubicacion-humano persona6 ubi26 )
		(ubicacion-humano persona7 ubi61 )
		(ubicacion-humano persona8 ubi20 )
		(ubicacion-humano persona9 ubi13 )
		(ubicacion-humano persona10 ubi48 )
		(ubicacion-humano persona11 ubi33 )
		(ubicacion-humano persona12 ubi19 )
		(ubicacion-humano persona13 ubi38 )
		(ubicacion-humano persona14 ubi41 )
		(ubicacion-humano persona15 estadio )
		(ubicacion-humano persona16 mercado )
		(ubicacion-humano persona17 ubi40 )
		(ubicacion-humano persona18 ubi64 )
		(ubicacion-humano persona19 ubi9 )
		(ubicacion-humano persona20 mercado )
		(ubicacion-humano persona21 ubi17 )
		(ubicacion-humano persona22 ubi79 )
		(ubicacion-humano persona23 campo )
		(ubicacion-humano persona24 ubi33 )
		(ubicacion-humano persona25 ubi27 )
		(ubicacion-humano persona26 campo )
		(ubicacion-humano persona27 ubi57 )
		(ubicacion-humano persona28 ubi19 )
		(ubicacion-humano persona29 ubi70 )
		(ubicacion-humano persona30 ubi79 )
		(ubicacion-humano persona31 ubi37 )
		(ubicacion-humano persona32 ubi78 )
		(ubicacion-humano persona33 ubi42 )
		(ubicacion-humano persona34 ubi14 )
		(ubicacion-humano persona35 cine )
		(ubicacion-humano persona36 ubi43 )
		(ubicacion-humano persona37 ubi61 )
		(ubicacion-humano persona38 ubi41 )
		(ubicacion-humano persona39 ubi19 )
		(ubicacion-humano persona40 ubi48 )
		(ubicacion-humano persona41 ubi19 )
		(ubicacion-humano persona42 estadio )
		(ubicacion-humano persona43 ubi16 )
		(ubicacion-humano persona44 ubi23 )
		(ubicacion-humano persona45 ubi40 )
		(ubicacion-humano persona46 ubi67 )
		(ubicacion-humano persona47 ubi30 )
		(ubicacion-humano persona48 ubi43 )
		(ubicacion-humano persona49 ubi42 )
		(ubicacion-humano persona50 ubi29 )
		(ubicacion-humano persona51 ubi76 )
		(ubicacion-humano persona52 ubi66 )
		(ubicacion-humano persona53 cine )
		(ubicacion-humano persona54 ubi41 )
		(ubicacion-humano persona55 ubi50 )
		(ubicacion-humano persona56 ubi21 )
		(ubicacion-humano persona57 ubi52 )
		(ubicacion-humano persona58 estadio )
		(ubicacion-humano persona59 ubi20 )
		(ubicacion-humano persona60 ubi28 )
		(ubicacion-humano persona61 ubi17 )
		(ubicacion-humano persona62 cine )
		(ubicacion-humano persona63 ubi30 )
		(ubicacion-humano persona64 ubi76 )
		(ubicacion-humano persona65 ubi11 )
		(ubicacion-humano persona66 bolera )
		(ubicacion-humano persona67 parque )
		(ubicacion-humano persona68 ubi74 )
		(ubicacion-humano persona69 ubi25 )
		(ubicacion-humano persona70 hospital )
		(ubicacion-humano persona71 ubi60 )
		(ubicacion-humano persona72 ubi36 )
		(ubicacion-humano persona73 mercado )
		(ubicacion-humano persona74 campo )
		(ubicacion-humano persona75 ubi18 )
		(ubicacion-humano persona76 ubi21 )
		(ubicacion-humano persona77 ubi76 )
		(ubicacion-humano persona78 ubi39 )
		(ubicacion-humano persona79 ubi76 )
		(ubicacion-humano persona80 ubi74 )

		(contenido-caja comida caja1)
		(contenido-caja comida caja2)
		(contenido-caja comida caja3)
		(contenido-caja comida caja4)
		(contenido-caja medicinas caja5)
		(contenido-caja medicinas caja6)
		(contenido-caja medicinas caja7)
		(contenido-caja medicinas caja8)
		(contenido-caja medicinas caja9)
		(contenido-caja medicinas caja10)
		(contenido-caja medicinas caja11)
		(contenido-caja medicinas caja12)
		(contenido-caja medicinas caja13)
		(contenido-caja medicinas caja14)
		(contenido-caja bebida caja15)
		(contenido-caja bebida caja16)
		(contenido-caja bebida caja17)
		(contenido-caja bebida caja18)
		(contenido-caja bebida caja19)
		(contenido-caja bebida caja20)
		(contenido-caja bebida caja21)
		(contenido-caja bebida caja22)
		(contenido-caja bebida caja23)
		(contenido-caja bebida caja24)
		(contenido-caja bebida caja25)
		(contenido-caja bebida caja26)
		(contenido-caja bebida caja27)
		(contenido-caja bebida caja28)
		(contenido-caja bebida caja29)
		(contenido-caja bebida caja30)
		(contenido-caja bebida caja31)
		(contenido-caja bebida caja32)
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
		(contenido-caja bebida caja51)
		(contenido-caja bebida caja52)
		(contenido-caja bebida caja53)
		(contenido-caja bebida caja54)
		(contenido-caja bebida caja55)
		(contenido-caja bebida caja56)
		(contenido-caja bebida caja57)
		(contenido-caja bebida caja58)
		(contenido-caja bebida caja59)
		(contenido-caja bebida caja60)
		(contenido-caja bebida caja61)
		(contenido-caja bebida caja62)
		(contenido-caja bebida caja63)
		(contenido-caja bebida caja64)
		(contenido-caja bebida caja65)
		(contenido-caja bebida caja66)
		(contenido-caja bebida caja67)
		(contenido-caja bebida caja68)
		(contenido-caja bebida caja69)
		(contenido-caja bebida caja70)
		(contenido-caja bebida caja71)
		(contenido-caja bebida caja72)
		(contenido-caja bebida caja73)
		(contenido-caja bebida caja74)
		(contenido-caja bebida caja75)
		(contenido-caja bebida caja76)
		(contenido-caja bebida caja77)
		(contenido-caja bebida caja78)
		(contenido-caja bebida caja79)
		(contenido-caja bebida caja80)

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
		(ubicacion-caja caja61 deposito )
		(ubicacion-caja caja62 deposito )
		(ubicacion-caja caja63 deposito )
		(ubicacion-caja caja64 deposito )
		(ubicacion-caja caja65 deposito )
		(ubicacion-caja caja66 deposito )
		(ubicacion-caja caja67 deposito )
		(ubicacion-caja caja68 deposito )
		(ubicacion-caja caja69 deposito )
		(ubicacion-caja caja70 deposito )
		(ubicacion-caja caja71 deposito )
		(ubicacion-caja caja72 deposito )
		(ubicacion-caja caja73 deposito )
		(ubicacion-caja caja74 deposito )
		(ubicacion-caja caja75 deposito )
		(ubicacion-caja caja76 deposito )
		(ubicacion-caja caja77 deposito )
		(ubicacion-caja caja78 deposito )
		(ubicacion-caja caja79 deposito )
		(ubicacion-caja caja80 deposito )


		(humano-necesita persona1 bebida)
		(humano-necesita persona2 medicinas)
		(humano-necesita persona2 bebida)
		(humano-necesita persona3 bebida)
		(humano-necesita persona6 bebida)
		(humano-necesita persona7 comida)
		(humano-necesita persona7 bebida)
		(humano-necesita persona8 bebida)
		(humano-necesita persona9 bebida)
		(humano-necesita persona10 bebida)
		(humano-necesita persona11 bebida)
		(humano-necesita persona12 comida)
		(humano-necesita persona13 bebida)
		(humano-necesita persona14 bebida)
		(humano-necesita persona17 bebida)
		(humano-necesita persona18 bebida)
		(humano-necesita persona19 bebida)
		(humano-necesita persona21 bebida)
		(humano-necesita persona22 bebida)
		(humano-necesita persona23 bebida)
		(humano-necesita persona24 bebida)
		(humano-necesita persona25 bebida)
		(humano-necesita persona26 medicinas)
		(humano-necesita persona26 bebida)
		(humano-necesita persona27 bebida)
		(humano-necesita persona28 comida)
		(humano-necesita persona28 bebida)
		(humano-necesita persona30 bebida)
		(humano-necesita persona31 bebida)
		(humano-necesita persona32 bebida)
		(humano-necesita persona33 bebida)
		(humano-necesita persona34 medicinas)
		(humano-necesita persona35 bebida)
		(humano-necesita persona36 bebida)
		(humano-necesita persona37 bebida)
		(humano-necesita persona38 bebida)
		(humano-necesita persona39 bebida)
		(humano-necesita persona40 bebida)
		(humano-necesita persona41 bebida)
		(humano-necesita persona42 bebida)
		(humano-necesita persona43 bebida)
		(humano-necesita persona44 medicinas)
		(humano-necesita persona45 bebida)
		(humano-necesita persona48 bebida)
		(humano-necesita persona49 medicinas)
		(humano-necesita persona49 bebida)
		(humano-necesita persona50 medicinas)
		(humano-necesita persona50 bebida)
		(humano-necesita persona51 bebida)
		(humano-necesita persona52 medicinas)
		(humano-necesita persona52 bebida)
		(humano-necesita persona53 bebida)
		(humano-necesita persona54 bebida)
		(humano-necesita persona55 bebida)
		(humano-necesita persona56 bebida)
		(humano-necesita persona57 bebida)
		(humano-necesita persona58 bebida)
		(humano-necesita persona59 bebida)
		(humano-necesita persona60 bebida)
		(humano-necesita persona61 bebida)
		(humano-necesita persona62 bebida)
		(humano-necesita persona64 bebida)
		(humano-necesita persona65 medicinas)
		(humano-necesita persona65 bebida)
		(humano-necesita persona66 bebida)
		(humano-necesita persona68 bebida)
		(humano-necesita persona69 bebida)
		(humano-necesita persona70 medicinas)
		(humano-necesita persona70 bebida)
		(humano-necesita persona71 bebida)
		(humano-necesita persona72 bebida)
		(humano-necesita persona73 bebida)
		(humano-necesita persona74 bebida)
		(humano-necesita persona75 comida)
		(humano-necesita persona75 bebida)
		(humano-necesita persona76 medicinas)
		(humano-necesita persona76 bebida)
		(humano-necesita persona77 bebida)
		(humano-necesita persona78 bebida)
		(humano-necesita persona79 bebida)
	)
	(:goal (and
		(ubicacion-dron dron1 deposito)

		(humano-satisfecho persona1 bebida)
		(humano-satisfecho persona2 medicinas)
		(humano-satisfecho persona2 bebida)
		(humano-satisfecho persona3 bebida)
		(humano-satisfecho persona6 bebida)
		(humano-satisfecho persona7 comida)
		(humano-satisfecho persona7 bebida)
		(humano-satisfecho persona8 bebida)
		(humano-satisfecho persona9 bebida)
		(humano-satisfecho persona10 bebida)
		(humano-satisfecho persona11 bebida)
		(humano-satisfecho persona12 comida)
		(humano-satisfecho persona13 bebida)
		(humano-satisfecho persona14 bebida)
		(humano-satisfecho persona17 bebida)
		(humano-satisfecho persona18 bebida)
		(humano-satisfecho persona19 bebida)
		(humano-satisfecho persona21 bebida)
		(humano-satisfecho persona22 bebida)
		(humano-satisfecho persona23 bebida)
		(humano-satisfecho persona24 bebida)
		(humano-satisfecho persona25 bebida)
		(humano-satisfecho persona26 medicinas)
		(humano-satisfecho persona26 bebida)
		(humano-satisfecho persona27 bebida)
		(humano-satisfecho persona28 comida)
		(humano-satisfecho persona28 bebida)
		(humano-satisfecho persona30 bebida)
		(humano-satisfecho persona31 bebida)
		(humano-satisfecho persona32 bebida)
		(humano-satisfecho persona33 bebida)
		(humano-satisfecho persona34 medicinas)
		(humano-satisfecho persona35 bebida)
		(humano-satisfecho persona36 bebida)
		(humano-satisfecho persona37 bebida)
		(humano-satisfecho persona38 bebida)
		(humano-satisfecho persona39 bebida)
		(humano-satisfecho persona40 bebida)
		(humano-satisfecho persona41 bebida)
		(humano-satisfecho persona42 bebida)
		(humano-satisfecho persona43 bebida)
		(humano-satisfecho persona44 medicinas)
		(humano-satisfecho persona45 bebida)
		(humano-satisfecho persona48 bebida)
		(humano-satisfecho persona49 medicinas)
		(humano-satisfecho persona49 bebida)
		(humano-satisfecho persona50 medicinas)
		(humano-satisfecho persona50 bebida)
		(humano-satisfecho persona51 bebida)
		(humano-satisfecho persona52 medicinas)
		(humano-satisfecho persona52 bebida)
		(humano-satisfecho persona53 bebida)
		(humano-satisfecho persona54 bebida)
		(humano-satisfecho persona55 bebida)
		(humano-satisfecho persona56 bebida)
		(humano-satisfecho persona57 bebida)
		(humano-satisfecho persona58 bebida)
		(humano-satisfecho persona59 bebida)
		(humano-satisfecho persona60 bebida)
		(humano-satisfecho persona61 bebida)
		(humano-satisfecho persona62 bebida)
		(humano-satisfecho persona64 bebida)
		(humano-satisfecho persona65 medicinas)
		(humano-satisfecho persona65 bebida)
		(humano-satisfecho persona66 bebida)
		(humano-satisfecho persona68 bebida)
		(humano-satisfecho persona69 bebida)
		(humano-satisfecho persona70 medicinas)
		(humano-satisfecho persona70 bebida)
		(humano-satisfecho persona71 bebida)
		(humano-satisfecho persona72 bebida)
		(humano-satisfecho persona73 bebida)
		(humano-satisfecho persona74 bebida)
		(humano-satisfecho persona75 comida)
		(humano-satisfecho persona75 bebida)
		(humano-satisfecho persona76 medicinas)
		(humano-satisfecho persona76 bebida)
		(humano-satisfecho persona77 bebida)
		(humano-satisfecho persona78 bebida)
		(humano-satisfecho persona79 bebida)
	))
)
