(define (problem drone_problem_d1_l100_p100_c100_g100_ct3)
	(:domain plocation_domain)
	(:objects
		dron1 - dron
		brazo1 - brazo
		brazo2 - brazo
		teatro - ubicacion
		estadio - ubicacion
		hospital - ubicacion
		cine - ubicacion
		parque - ubicacion
		mercado - ubicacion
		campo - ubicacion
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
		ubi90 - ubicacion
		ubi91 - ubicacion
		ubi92 - ubicacion
		ubi93 - ubicacion
		ubi94 - ubicacion
		ubi95 - ubicacion
		ubi96 - ubicacion
		ubi97 - ubicacion
		ubi98 - ubicacion
		ubi99 - ubicacion
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
		caja91 - caja
		caja92 - caja
		caja93 - caja
		caja94 - caja
		caja95 - caja
		caja96 - caja
		caja97 - caja
		caja98 - caja
		caja99 - caja
		caja100 - caja
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
		persona91 - humano
		persona92 - humano
		persona93 - humano
		persona94 - humano
		persona95 - humano
		persona96 - humano
		persona97 - humano
		persona98 - humano
		persona99 - humano
		persona100 - humano
	)
	(:init
		(brazo-dron dron1 brazo1)
		(free-brazo dron1 brazo1)
		(brazo-dron dron1 brazo2)
		(free-brazo dron1 brazo2)

		(ubicacion-dron dron1 deposito )

		(ubicacion-humano persona1 ubi44 )
		(ubicacion-humano persona2 ubi65 )
		(ubicacion-humano persona3 ubi67 )
		(ubicacion-humano persona4 ubi83 )
		(ubicacion-humano persona5 ubi34 )
		(ubicacion-humano persona6 ubi59 )
		(ubicacion-humano persona7 ubi98 )
		(ubicacion-humano persona8 ubi30 )
		(ubicacion-humano persona9 ubi77 )
		(ubicacion-humano persona10 ubi78 )
		(ubicacion-humano persona11 ubi48 )
		(ubicacion-humano persona12 ubi89 )
		(ubicacion-humano persona13 ubi99 )
		(ubicacion-humano persona14 ubi48 )
		(ubicacion-humano persona15 campo )
		(ubicacion-humano persona16 ubi41 )
		(ubicacion-humano persona17 ubi92 )
		(ubicacion-humano persona18 ubi27 )
		(ubicacion-humano persona19 hospital )
		(ubicacion-humano persona20 ubi14 )
		(ubicacion-humano persona21 ubi39 )
		(ubicacion-humano persona22 ubi96 )
		(ubicacion-humano persona23 ubi21 )
		(ubicacion-humano persona24 ubi28 )
		(ubicacion-humano persona25 ubi27 )
		(ubicacion-humano persona26 ubi39 )
		(ubicacion-humano persona27 ubi28 )
		(ubicacion-humano persona28 ubi91 )
		(ubicacion-humano persona29 ubi45 )
		(ubicacion-humano persona30 ubi26 )
		(ubicacion-humano persona31 ubi29 )
		(ubicacion-humano persona32 bolera )
		(ubicacion-humano persona33 ubi55 )
		(ubicacion-humano persona34 ubi58 )
		(ubicacion-humano persona35 ubi73 )
		(ubicacion-humano persona36 ubi70 )
		(ubicacion-humano persona37 ubi65 )
		(ubicacion-humano persona38 ubi94 )
		(ubicacion-humano persona39 ubi16 )
		(ubicacion-humano persona40 ubi34 )
		(ubicacion-humano persona41 ubi27 )
		(ubicacion-humano persona42 ubi31 )
		(ubicacion-humano persona43 ubi37 )
		(ubicacion-humano persona44 ubi94 )
		(ubicacion-humano persona45 ubi31 )
		(ubicacion-humano persona46 ubi34 )
		(ubicacion-humano persona47 ubi22 )
		(ubicacion-humano persona48 ubi63 )
		(ubicacion-humano persona49 ubi51 )
		(ubicacion-humano persona50 ubi72 )
		(ubicacion-humano persona51 ubi23 )
		(ubicacion-humano persona52 ubi84 )
		(ubicacion-humano persona53 ubi78 )
		(ubicacion-humano persona54 ubi37 )
		(ubicacion-humano persona55 ubi17 )
		(ubicacion-humano persona56 ubi63 )
		(ubicacion-humano persona57 ubi81 )
		(ubicacion-humano persona58 ubi29 )
		(ubicacion-humano persona59 ubi49 )
		(ubicacion-humano persona60 ubi98 )
		(ubicacion-humano persona61 ubi94 )
		(ubicacion-humano persona62 ubi76 )
		(ubicacion-humano persona63 ubi27 )
		(ubicacion-humano persona64 ubi79 )
		(ubicacion-humano persona65 ubi75 )
		(ubicacion-humano persona66 ubi35 )
		(ubicacion-humano persona67 ubi34 )
		(ubicacion-humano persona68 ubi75 )
		(ubicacion-humano persona69 ubi39 )
		(ubicacion-humano persona70 ubi41 )
		(ubicacion-humano persona71 ubi87 )
		(ubicacion-humano persona72 ubi40 )
		(ubicacion-humano persona73 ubi72 )
		(ubicacion-humano persona74 ubi23 )
		(ubicacion-humano persona75 ubi59 )
		(ubicacion-humano persona76 ubi54 )
		(ubicacion-humano persona77 ubi26 )
		(ubicacion-humano persona78 ubi99 )
		(ubicacion-humano persona79 ubi47 )
		(ubicacion-humano persona80 ubi58 )
		(ubicacion-humano persona81 ubi10 )
		(ubicacion-humano persona82 cine )
		(ubicacion-humano persona83 ubi10 )
		(ubicacion-humano persona84 ubi28 )
		(ubicacion-humano persona85 ubi23 )
		(ubicacion-humano persona86 teatro )
		(ubicacion-humano persona87 ubi43 )
		(ubicacion-humano persona88 ubi57 )
		(ubicacion-humano persona89 ubi51 )
		(ubicacion-humano persona90 ubi14 )
		(ubicacion-humano persona91 ubi87 )
		(ubicacion-humano persona92 ubi19 )
		(ubicacion-humano persona93 ubi35 )
		(ubicacion-humano persona94 ubi58 )
		(ubicacion-humano persona95 ubi36 )
		(ubicacion-humano persona96 ubi50 )
		(ubicacion-humano persona97 ubi58 )
		(ubicacion-humano persona98 ubi46 )
		(ubicacion-humano persona99 ubi61 )
		(ubicacion-humano persona100 ubi86 )

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
		(contenido-caja comida caja33)
		(contenido-caja comida caja34)
		(contenido-caja comida caja35)
		(contenido-caja comida caja36)
		(contenido-caja comida caja37)
		(contenido-caja comida caja38)
		(contenido-caja comida caja39)
		(contenido-caja comida caja40)
		(contenido-caja comida caja41)
		(contenido-caja comida caja42)
		(contenido-caja comida caja43)
		(contenido-caja comida caja44)
		(contenido-caja comida caja45)
		(contenido-caja comida caja46)
		(contenido-caja comida caja47)
		(contenido-caja comida caja48)
		(contenido-caja comida caja49)
		(contenido-caja comida caja50)
		(contenido-caja comida caja51)
		(contenido-caja comida caja52)
		(contenido-caja comida caja53)
		(contenido-caja comida caja54)
		(contenido-caja comida caja55)
		(contenido-caja comida caja56)
		(contenido-caja comida caja57)
		(contenido-caja comida caja58)
		(contenido-caja comida caja59)
		(contenido-caja comida caja60)
		(contenido-caja comida caja61)
		(contenido-caja comida caja62)
		(contenido-caja comida caja63)
		(contenido-caja comida caja64)
		(contenido-caja comida caja65)
		(contenido-caja comida caja66)
		(contenido-caja comida caja67)
		(contenido-caja comida caja68)
		(contenido-caja comida caja69)
		(contenido-caja comida caja70)
		(contenido-caja comida caja71)
		(contenido-caja comida caja72)
		(contenido-caja comida caja73)
		(contenido-caja comida caja74)
		(contenido-caja comida caja75)
		(contenido-caja comida caja76)
		(contenido-caja comida caja77)
		(contenido-caja comida caja78)
		(contenido-caja comida caja79)
		(contenido-caja comida caja80)
		(contenido-caja comida caja81)
		(contenido-caja comida caja82)
		(contenido-caja comida caja83)
		(contenido-caja comida caja84)
		(contenido-caja comida caja85)
		(contenido-caja comida caja86)
		(contenido-caja comida caja87)
		(contenido-caja comida caja88)
		(contenido-caja comida caja89)
		(contenido-caja comida caja90)
		(contenido-caja comida caja91)
		(contenido-caja comida caja92)
		(contenido-caja comida caja93)
		(contenido-caja comida caja94)
		(contenido-caja comida caja95)
		(contenido-caja medicinas caja96)
		(contenido-caja medicinas caja97)
		(contenido-caja medicinas caja98)
		(contenido-caja bebida caja99)
		(contenido-caja bebida caja100)
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
		(ubicacion-caja caja91 deposito )
		(ubicacion-caja caja92 deposito )
		(ubicacion-caja caja93 deposito )
		(ubicacion-caja caja94 deposito )
		(ubicacion-caja caja95 deposito )
		(ubicacion-caja caja96 deposito )
		(ubicacion-caja caja97 deposito )
		(ubicacion-caja caja98 deposito )
		(ubicacion-caja caja99 deposito )
		(ubicacion-caja caja100 deposito )


		(humano-necesita persona1 comida)
		(humano-necesita persona2 comida)
		(humano-necesita persona3 comida)
		(humano-necesita persona4 comida)
		(humano-necesita persona5 comida)
		(humano-necesita persona6 comida)
		(humano-necesita persona7 comida)
		(humano-necesita persona8 comida)
		(humano-necesita persona9 comida)
		(humano-necesita persona10 comida)
		(humano-necesita persona11 comida)
		(humano-necesita persona12 comida)
		(humano-necesita persona13 comida)
		(humano-necesita persona15 comida)
		(humano-necesita persona16 comida)
		(humano-necesita persona17 comida)
		(humano-necesita persona18 comida)
		(humano-necesita persona19 bebida)
		(humano-necesita persona20 comida)
		(humano-necesita persona21 comida)
		(humano-necesita persona22 comida)
		(humano-necesita persona23 comida)
		(humano-necesita persona24 comida)
		(humano-necesita persona26 comida)
		(humano-necesita persona27 comida)
		(humano-necesita persona28 comida)
		(humano-necesita persona29 comida)
		(humano-necesita persona29 bebida)
		(humano-necesita persona30 comida)
		(humano-necesita persona31 comida)
		(humano-necesita persona32 comida)
		(humano-necesita persona33 comida)
		(humano-necesita persona34 comida)
		(humano-necesita persona35 comida)
		(humano-necesita persona36 comida)
		(humano-necesita persona37 comida)
		(humano-necesita persona38 comida)
		(humano-necesita persona39 comida)
		(humano-necesita persona40 comida)
		(humano-necesita persona41 comida)
		(humano-necesita persona42 comida)
		(humano-necesita persona43 comida)
		(humano-necesita persona44 comida)
		(humano-necesita persona44 medicinas)
		(humano-necesita persona45 comida)
		(humano-necesita persona46 comida)
		(humano-necesita persona47 comida)
		(humano-necesita persona48 comida)
		(humano-necesita persona49 comida)
		(humano-necesita persona50 comida)
		(humano-necesita persona51 comida)
		(humano-necesita persona52 comida)
		(humano-necesita persona52 medicinas)
		(humano-necesita persona53 comida)
		(humano-necesita persona54 comida)
		(humano-necesita persona55 comida)
		(humano-necesita persona56 comida)
		(humano-necesita persona57 comida)
		(humano-necesita persona58 comida)
		(humano-necesita persona59 comida)
		(humano-necesita persona60 comida)
		(humano-necesita persona61 comida)
		(humano-necesita persona62 comida)
		(humano-necesita persona63 comida)
		(humano-necesita persona64 comida)
		(humano-necesita persona65 comida)
		(humano-necesita persona66 comida)
		(humano-necesita persona67 comida)
		(humano-necesita persona68 comida)
		(humano-necesita persona69 comida)
		(humano-necesita persona70 comida)
		(humano-necesita persona71 comida)
		(humano-necesita persona73 comida)
		(humano-necesita persona74 comida)
		(humano-necesita persona75 comida)
		(humano-necesita persona76 comida)
		(humano-necesita persona77 comida)
		(humano-necesita persona78 comida)
		(humano-necesita persona79 comida)
		(humano-necesita persona80 comida)
		(humano-necesita persona81 comida)
		(humano-necesita persona82 comida)
		(humano-necesita persona83 comida)
		(humano-necesita persona84 comida)
		(humano-necesita persona85 comida)
		(humano-necesita persona86 comida)
		(humano-necesita persona87 comida)
		(humano-necesita persona88 comida)
		(humano-necesita persona89 comida)
		(humano-necesita persona90 comida)
		(humano-necesita persona91 comida)
		(humano-necesita persona91 medicinas)
		(humano-necesita persona92 comida)
		(humano-necesita persona93 comida)
		(humano-necesita persona95 comida)
		(humano-necesita persona96 comida)
		(humano-necesita persona97 comida)
		(humano-necesita persona98 comida)
		(humano-necesita persona99 comida)
		(humano-necesita persona100 comida)
	)
	(:goal (and
		(ubicacion-dron dron1 deposito)

		(humano-satisfecho persona1 comida)
		(humano-satisfecho persona2 comida)
		(humano-satisfecho persona3 comida)
		(humano-satisfecho persona4 comida)
		(humano-satisfecho persona5 comida)
		(humano-satisfecho persona6 comida)
		(humano-satisfecho persona7 comida)
		(humano-satisfecho persona8 comida)
		(humano-satisfecho persona9 comida)
		(humano-satisfecho persona10 comida)
		(humano-satisfecho persona11 comida)
		(humano-satisfecho persona12 comida)
		(humano-satisfecho persona13 comida)
		(humano-satisfecho persona15 comida)
		(humano-satisfecho persona16 comida)
		(humano-satisfecho persona17 comida)
		(humano-satisfecho persona18 comida)
		(humano-satisfecho persona19 bebida)
		(humano-satisfecho persona20 comida)
		(humano-satisfecho persona21 comida)
		(humano-satisfecho persona22 comida)
		(humano-satisfecho persona23 comida)
		(humano-satisfecho persona24 comida)
		(humano-satisfecho persona26 comida)
		(humano-satisfecho persona27 comida)
		(humano-satisfecho persona28 comida)
		(humano-satisfecho persona29 comida)
		(humano-satisfecho persona29 bebida)
		(humano-satisfecho persona30 comida)
		(humano-satisfecho persona31 comida)
		(humano-satisfecho persona32 comida)
		(humano-satisfecho persona33 comida)
		(humano-satisfecho persona34 comida)
		(humano-satisfecho persona35 comida)
		(humano-satisfecho persona36 comida)
		(humano-satisfecho persona37 comida)
		(humano-satisfecho persona38 comida)
		(humano-satisfecho persona39 comida)
		(humano-satisfecho persona40 comida)
		(humano-satisfecho persona41 comida)
		(humano-satisfecho persona42 comida)
		(humano-satisfecho persona43 comida)
		(humano-satisfecho persona44 comida)
		(humano-satisfecho persona44 medicinas)
		(humano-satisfecho persona45 comida)
		(humano-satisfecho persona46 comida)
		(humano-satisfecho persona47 comida)
		(humano-satisfecho persona48 comida)
		(humano-satisfecho persona49 comida)
		(humano-satisfecho persona50 comida)
		(humano-satisfecho persona51 comida)
		(humano-satisfecho persona52 comida)
		(humano-satisfecho persona52 medicinas)
		(humano-satisfecho persona53 comida)
		(humano-satisfecho persona54 comida)
		(humano-satisfecho persona55 comida)
		(humano-satisfecho persona56 comida)
		(humano-satisfecho persona57 comida)
		(humano-satisfecho persona58 comida)
		(humano-satisfecho persona59 comida)
		(humano-satisfecho persona60 comida)
		(humano-satisfecho persona61 comida)
		(humano-satisfecho persona62 comida)
		(humano-satisfecho persona63 comida)
		(humano-satisfecho persona64 comida)
		(humano-satisfecho persona65 comida)
		(humano-satisfecho persona66 comida)
		(humano-satisfecho persona67 comida)
		(humano-satisfecho persona68 comida)
		(humano-satisfecho persona69 comida)
		(humano-satisfecho persona70 comida)
		(humano-satisfecho persona71 comida)
		(humano-satisfecho persona73 comida)
		(humano-satisfecho persona74 comida)
		(humano-satisfecho persona75 comida)
		(humano-satisfecho persona76 comida)
		(humano-satisfecho persona77 comida)
		(humano-satisfecho persona78 comida)
		(humano-satisfecho persona79 comida)
		(humano-satisfecho persona80 comida)
		(humano-satisfecho persona81 comida)
		(humano-satisfecho persona82 comida)
		(humano-satisfecho persona83 comida)
		(humano-satisfecho persona84 comida)
		(humano-satisfecho persona85 comida)
		(humano-satisfecho persona86 comida)
		(humano-satisfecho persona87 comida)
		(humano-satisfecho persona88 comida)
		(humano-satisfecho persona89 comida)
		(humano-satisfecho persona90 comida)
		(humano-satisfecho persona91 comida)
		(humano-satisfecho persona91 medicinas)
		(humano-satisfecho persona92 comida)
		(humano-satisfecho persona93 comida)
		(humano-satisfecho persona95 comida)
		(humano-satisfecho persona96 comida)
		(humano-satisfecho persona97 comida)
		(humano-satisfecho persona98 comida)
		(humano-satisfecho persona99 comida)
		(humano-satisfecho persona100 comida)
		))
)
