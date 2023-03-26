(define (problem drone_problem_d1_l90_p90_c90_g90_ct3)
	(:domain pl1_domain)
	(:objects
		dron1 - dron
		brazo1 - brazo
		brazo2 - brazo
		estadio - ubicacion
		parque - ubicacion
		teatro - ubicacion
		campo - ubicacion
		bolera - ubicacion
		cine - ubicacion
		mercado - ubicacion
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
		ubi80 - ubicacion
		ubi81 - ubicacion
		ubi82 - ubicacion
		ubi83 - ubicacion
		ubi84 - ubicacion
		ubi85 - ubicacion
		ubi86 - ubicacion
		ubi87 - ubicacion
		ubi88 - ubicacion
		ubi89 - ubicacion
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
		caja81 - caja
		caja82 - caja
		caja83 - caja
		caja84 - caja
		caja85 - caja
		caja86 - caja
		caja87 - caja
		caja88 - caja
		caja89 - caja
		caja90 - caja
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
		persona81 - humano
		persona82 - humano
		persona83 - humano
		persona84 - humano
		persona85 - humano
		persona86 - humano
		persona87 - humano
		persona88 - humano
		persona89 - humano
		persona90 - humano
	)
	(:init
		(brazo-dron dron1 brazo1)
		(free-brazo dron1 brazo1)
		(brazo-dron dron1 brazo2)
		(free-brazo dron1 brazo2)

		(ubicacion-dron dron1 deposito )

		(ubicacion-humano persona1 bolera )
		(ubicacion-humano persona2 ubi35 )
		(ubicacion-humano persona3 ubi33 )
		(ubicacion-humano persona4 ubi57 )
		(ubicacion-humano persona5 ubi89 )
		(ubicacion-humano persona6 ubi27 )
		(ubicacion-humano persona7 ubi20 )
		(ubicacion-humano persona8 ubi52 )
		(ubicacion-humano persona9 ubi60 )
		(ubicacion-humano persona10 ubi78 )
		(ubicacion-humano persona11 ubi63 )
		(ubicacion-humano persona12 teatro )
		(ubicacion-humano persona13 ubi53 )
		(ubicacion-humano persona14 ubi52 )
		(ubicacion-humano persona15 ubi78 )
		(ubicacion-humano persona16 ubi18 )
		(ubicacion-humano persona17 ubi67 )
		(ubicacion-humano persona18 ubi63 )
		(ubicacion-humano persona19 ubi76 )
		(ubicacion-humano persona20 ubi19 )
		(ubicacion-humano persona21 ubi29 )
		(ubicacion-humano persona22 ubi66 )
		(ubicacion-humano persona23 ubi40 )
		(ubicacion-humano persona24 ubi87 )
		(ubicacion-humano persona25 ubi58 )
		(ubicacion-humano persona26 parque )
		(ubicacion-humano persona27 ubi36 )
		(ubicacion-humano persona28 ubi85 )
		(ubicacion-humano persona29 ubi72 )
		(ubicacion-humano persona30 ubi78 )
		(ubicacion-humano persona31 ubi36 )
		(ubicacion-humano persona32 ubi23 )
		(ubicacion-humano persona33 ubi66 )
		(ubicacion-humano persona34 ubi39 )
		(ubicacion-humano persona35 ubi47 )
		(ubicacion-humano persona36 mercado )
		(ubicacion-humano persona37 ubi73 )
		(ubicacion-humano persona38 ubi73 )
		(ubicacion-humano persona39 ubi18 )
		(ubicacion-humano persona40 ubi56 )
		(ubicacion-humano persona41 ubi72 )
		(ubicacion-humano persona42 ubi34 )
		(ubicacion-humano persona43 ubi42 )
		(ubicacion-humano persona44 ubi12 )
		(ubicacion-humano persona45 cine )
		(ubicacion-humano persona46 ubi36 )
		(ubicacion-humano persona47 ubi12 )
		(ubicacion-humano persona48 ubi51 )
		(ubicacion-humano persona49 ubi70 )
		(ubicacion-humano persona50 ubi46 )
		(ubicacion-humano persona51 cine )
		(ubicacion-humano persona52 ubi50 )
		(ubicacion-humano persona53 ubi21 )
		(ubicacion-humano persona54 ubi70 )
		(ubicacion-humano persona55 ubi39 )
		(ubicacion-humano persona56 ubi13 )
		(ubicacion-humano persona57 ubi38 )
		(ubicacion-humano persona58 ubi51 )
		(ubicacion-humano persona59 ubi56 )
		(ubicacion-humano persona60 ubi73 )
		(ubicacion-humano persona61 ubi84 )
		(ubicacion-humano persona62 ubi10 )
		(ubicacion-humano persona63 ubi53 )
		(ubicacion-humano persona64 ubi81 )
		(ubicacion-humano persona65 ubi87 )
		(ubicacion-humano persona66 ubi34 )
		(ubicacion-humano persona67 ubi29 )
		(ubicacion-humano persona68 ubi88 )
		(ubicacion-humano persona69 ubi13 )
		(ubicacion-humano persona70 ubi23 )
		(ubicacion-humano persona71 ubi80 )
		(ubicacion-humano persona72 ubi19 )
		(ubicacion-humano persona73 ubi28 )
		(ubicacion-humano persona74 ubi34 )
		(ubicacion-humano persona75 ubi87 )
		(ubicacion-humano persona76 ubi11 )
		(ubicacion-humano persona77 ubi76 )
		(ubicacion-humano persona78 ubi11 )
		(ubicacion-humano persona79 ubi55 )
		(ubicacion-humano persona80 ubi44 )
		(ubicacion-humano persona81 ubi30 )
		(ubicacion-humano persona82 ubi88 )
		(ubicacion-humano persona83 ubi52 )
		(ubicacion-humano persona84 ubi88 )
		(ubicacion-humano persona85 ubi86 )
		(ubicacion-humano persona86 ubi69 )
		(ubicacion-humano persona87 ubi81 )
		(ubicacion-humano persona88 ubi16 )
		(ubicacion-humano persona89 ubi49 )
		(ubicacion-humano persona90 ubi21 )

		(contenido-caja comida caja1)
		(contenido-caja comida caja2)
		(contenido-caja comida caja3)
		(contenido-caja comida caja4)
		(contenido-caja comida caja5)
		(contenido-caja comida caja6)
		(contenido-caja comida caja7)
		(contenido-caja comida caja8)
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
		(contenido-caja medicinas caja57)
		(contenido-caja medicinas caja58)
		(contenido-caja medicinas caja59)
		(contenido-caja medicinas caja60)
		(contenido-caja medicinas caja61)
		(contenido-caja medicinas caja62)
		(contenido-caja medicinas caja63)
		(contenido-caja medicinas caja64)
		(contenido-caja medicinas caja65)
		(contenido-caja medicinas caja66)
		(contenido-caja medicinas caja67)
		(contenido-caja medicinas caja68)
		(contenido-caja medicinas caja69)
		(contenido-caja medicinas caja70)
		(contenido-caja medicinas caja71)
		(contenido-caja medicinas caja72)
		(contenido-caja medicinas caja73)
		(contenido-caja medicinas caja74)
		(contenido-caja medicinas caja75)
		(contenido-caja medicinas caja76)
		(contenido-caja medicinas caja77)
		(contenido-caja medicinas caja78)
		(contenido-caja medicinas caja79)
		(contenido-caja medicinas caja80)
		(contenido-caja medicinas caja81)
		(contenido-caja medicinas caja82)
		(contenido-caja medicinas caja83)
		(contenido-caja medicinas caja84)
		(contenido-caja medicinas caja85)
		(contenido-caja medicinas caja86)
		(contenido-caja medicinas caja87)
		(contenido-caja medicinas caja88)
		(contenido-caja bebida caja89)
		(contenido-caja bebida caja90)

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
		(ubicacion-caja caja81 deposito )
		(ubicacion-caja caja82 deposito )
		(ubicacion-caja caja83 deposito )
		(ubicacion-caja caja84 deposito )
		(ubicacion-caja caja85 deposito )
		(ubicacion-caja caja86 deposito )
		(ubicacion-caja caja87 deposito )
		(ubicacion-caja caja88 deposito )
		(ubicacion-caja caja89 deposito )
		(ubicacion-caja caja90 deposito )


		(humano-necesita persona1 medicinas)
		(humano-necesita persona2 medicinas)
		(humano-necesita persona3 medicinas)
		(humano-necesita persona4 medicinas)
		(humano-necesita persona5 medicinas)
		(humano-necesita persona6 comida)
		(humano-necesita persona6 medicinas)
		(humano-necesita persona7 medicinas)
		(humano-necesita persona8 comida)
		(humano-necesita persona8 medicinas)
		(humano-necesita persona9 medicinas)
		(humano-necesita persona10 medicinas)
		(humano-necesita persona11 medicinas)
		(humano-necesita persona12 medicinas)
		(humano-necesita persona13 medicinas)
		(humano-necesita persona15 medicinas)
		(humano-necesita persona17 medicinas)
		(humano-necesita persona18 comida)
		(humano-necesita persona18 medicinas)
		(humano-necesita persona19 medicinas)
		(humano-necesita persona20 medicinas)
		(humano-necesita persona21 medicinas)
		(humano-necesita persona22 medicinas)
		(humano-necesita persona23 medicinas)
		(humano-necesita persona24 medicinas)
		(humano-necesita persona25 medicinas)
		(humano-necesita persona26 medicinas)
		(humano-necesita persona27 comida)
		(humano-necesita persona27 medicinas)
		(humano-necesita persona28 medicinas)
		(humano-necesita persona29 medicinas)
		(humano-necesita persona30 medicinas)
		(humano-necesita persona31 medicinas)
		(humano-necesita persona32 medicinas)
		(humano-necesita persona33 medicinas)
		(humano-necesita persona34 medicinas)
		(humano-necesita persona35 medicinas)
		(humano-necesita persona36 medicinas)
		(humano-necesita persona37 medicinas)
		(humano-necesita persona38 medicinas)
		(humano-necesita persona39 medicinas)
		(humano-necesita persona40 medicinas)
		(humano-necesita persona42 medicinas)
		(humano-necesita persona43 medicinas)
		(humano-necesita persona44 medicinas)
		(humano-necesita persona46 medicinas)
		(humano-necesita persona48 medicinas)
		(humano-necesita persona49 medicinas)
		(humano-necesita persona50 medicinas)
		(humano-necesita persona51 medicinas)
		(humano-necesita persona52 medicinas)
		(humano-necesita persona53 comida)
		(humano-necesita persona53 medicinas)
		(humano-necesita persona54 medicinas)
		(humano-necesita persona55 comida)
		(humano-necesita persona55 medicinas)
		(humano-necesita persona56 medicinas)
		(humano-necesita persona57 medicinas)
		(humano-necesita persona58 medicinas)
		(humano-necesita persona59 medicinas)
		(humano-necesita persona60 medicinas)
		(humano-necesita persona61 medicinas)
		(humano-necesita persona62 medicinas)
		(humano-necesita persona63 medicinas)
		(humano-necesita persona64 medicinas)
		(humano-necesita persona65 medicinas)
		(humano-necesita persona66 comida)
		(humano-necesita persona66 medicinas)
		(humano-necesita persona68 medicinas)
		(humano-necesita persona70 medicinas)
		(humano-necesita persona71 medicinas)
		(humano-necesita persona72 medicinas)
		(humano-necesita persona73 medicinas)
		(humano-necesita persona74 bebida)
		(humano-necesita persona75 medicinas)
		(humano-necesita persona76 medicinas)
		(humano-necesita persona77 medicinas)
		(humano-necesita persona78 medicinas)
		(humano-necesita persona79 medicinas)
		(humano-necesita persona79 bebida)
		(humano-necesita persona80 comida)
		(humano-necesita persona80 medicinas)
		(humano-necesita persona82 medicinas)
		(humano-necesita persona84 medicinas)
		(humano-necesita persona85 medicinas)
		(humano-necesita persona86 medicinas)
		(humano-necesita persona87 medicinas)
		(humano-necesita persona88 medicinas)
		(humano-necesita persona89 medicinas)
		(humano-necesita persona90 medicinas)
	)
	(:goal (and
		(ubicacion-dron dron1 deposito)

		(humano-satisfecho persona1 medicinas)
		(humano-satisfecho persona2 medicinas)
		(humano-satisfecho persona3 medicinas)
		(humano-satisfecho persona4 medicinas)
		(humano-satisfecho persona5 medicinas)
		(humano-satisfecho persona6 comida)
		(humano-satisfecho persona6 medicinas)
		(humano-satisfecho persona7 medicinas)
		(humano-satisfecho persona8 comida)
		(humano-satisfecho persona8 medicinas)
		(humano-satisfecho persona9 medicinas)
		(humano-satisfecho persona10 medicinas)
		(humano-satisfecho persona11 medicinas)
		(humano-satisfecho persona12 medicinas)
		(humano-satisfecho persona13 medicinas)
		(humano-satisfecho persona15 medicinas)
		(humano-satisfecho persona17 medicinas)
		(humano-satisfecho persona18 comida)
		(humano-satisfecho persona18 medicinas)
		(humano-satisfecho persona19 medicinas)
		(humano-satisfecho persona20 medicinas)
		(humano-satisfecho persona21 medicinas)
		(humano-satisfecho persona22 medicinas)
		(humano-satisfecho persona23 medicinas)
		(humano-satisfecho persona24 medicinas)
		(humano-satisfecho persona25 medicinas)
		(humano-satisfecho persona26 medicinas)
		(humano-satisfecho persona27 comida)
		(humano-satisfecho persona27 medicinas)
		(humano-satisfecho persona28 medicinas)
		(humano-satisfecho persona29 medicinas)
		(humano-satisfecho persona30 medicinas)
		(humano-satisfecho persona31 medicinas)
		(humano-satisfecho persona32 medicinas)
		(humano-satisfecho persona33 medicinas)
		(humano-satisfecho persona34 medicinas)
		(humano-satisfecho persona35 medicinas)
		(humano-satisfecho persona36 medicinas)
		(humano-satisfecho persona37 medicinas)
		(humano-satisfecho persona38 medicinas)
		(humano-satisfecho persona39 medicinas)
		(humano-satisfecho persona40 medicinas)
		(humano-satisfecho persona42 medicinas)
		(humano-satisfecho persona43 medicinas)
		(humano-satisfecho persona44 medicinas)
		(humano-satisfecho persona46 medicinas)
		(humano-satisfecho persona48 medicinas)
		(humano-satisfecho persona49 medicinas)
		(humano-satisfecho persona50 medicinas)
		(humano-satisfecho persona51 medicinas)
		(humano-satisfecho persona52 medicinas)
		(humano-satisfecho persona53 comida)
		(humano-satisfecho persona53 medicinas)
		(humano-satisfecho persona54 medicinas)
		(humano-satisfecho persona55 comida)
		(humano-satisfecho persona55 medicinas)
		(humano-satisfecho persona56 medicinas)
		(humano-satisfecho persona57 medicinas)
		(humano-satisfecho persona58 medicinas)
		(humano-satisfecho persona59 medicinas)
		(humano-satisfecho persona60 medicinas)
		(humano-satisfecho persona61 medicinas)
		(humano-satisfecho persona62 medicinas)
		(humano-satisfecho persona63 medicinas)
		(humano-satisfecho persona64 medicinas)
		(humano-satisfecho persona65 medicinas)
		(humano-satisfecho persona66 comida)
		(humano-satisfecho persona66 medicinas)
		(humano-satisfecho persona68 medicinas)
		(humano-satisfecho persona70 medicinas)
		(humano-satisfecho persona71 medicinas)
		(humano-satisfecho persona72 medicinas)
		(humano-satisfecho persona73 medicinas)
		(humano-satisfecho persona74 bebida)
		(humano-satisfecho persona75 medicinas)
		(humano-satisfecho persona76 medicinas)
		(humano-satisfecho persona77 medicinas)
		(humano-satisfecho persona78 medicinas)
		(humano-satisfecho persona79 medicinas)
		(humano-satisfecho persona79 bebida)
		(humano-satisfecho persona80 comida)
		(humano-satisfecho persona80 medicinas)
		(humano-satisfecho persona82 medicinas)
		(humano-satisfecho persona84 medicinas)
		(humano-satisfecho persona85 medicinas)
		(humano-satisfecho persona86 medicinas)
		(humano-satisfecho persona87 medicinas)
		(humano-satisfecho persona88 medicinas)
		(humano-satisfecho persona89 medicinas)
		(humano-satisfecho persona90 medicinas)
	))
)
