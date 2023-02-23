(define (problem drone_problem_d1_l100_p100_c100_g100_ct3)
	(:domain pl1_domain)
	(:objects
		dron1 - dron
		brazo1 - brazo
		brazo2 - brazo
		deposito - ubicacion
		mercado - ubicacion
		hospital - ubicacion
		campo - ubicacion
		ubi4 - ubicacion
		ubi5 - ubicacion
		ubi6 - ubicacion
		ubi7 - ubicacion
		ubi8 - ubicacion
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

		(ubicacion-humano persona1 ubi36 )
		(ubicacion-humano persona2 ubi13 )
		(ubicacion-humano persona3 ubi40 )
		(ubicacion-humano persona4 ubi37 )
		(ubicacion-humano persona5 ubi42 )
		(ubicacion-humano persona6 ubi45 )
		(ubicacion-humano persona7 ubi92 )
		(ubicacion-humano persona8 ubi99 )
		(ubicacion-humano persona9 ubi97 )
		(ubicacion-humano persona10 ubi92 )
		(ubicacion-humano persona11 ubi5 )
		(ubicacion-humano persona12 ubi46 )
		(ubicacion-humano persona13 ubi9 )
		(ubicacion-humano persona14 ubi95 )
		(ubicacion-humano persona15 ubi15 )
		(ubicacion-humano persona16 ubi16 )
		(ubicacion-humano persona17 ubi78 )
		(ubicacion-humano persona18 ubi48 )
		(ubicacion-humano persona19 ubi36 )
		(ubicacion-humano persona20 ubi59 )
		(ubicacion-humano persona21 ubi76 )
		(ubicacion-humano persona22 ubi94 )
		(ubicacion-humano persona23 ubi6 )
		(ubicacion-humano persona24 ubi77 )
		(ubicacion-humano persona25 ubi34 )
		(ubicacion-humano persona26 ubi99 )
		(ubicacion-humano persona27 ubi19 )
		(ubicacion-humano persona28 ubi96 )
		(ubicacion-humano persona29 ubi32 )
		(ubicacion-humano persona30 mercado )
		(ubicacion-humano persona31 ubi28 )
		(ubicacion-humano persona32 ubi16 )
		(ubicacion-humano persona33 ubi88 )
		(ubicacion-humano persona34 ubi57 )
		(ubicacion-humano persona35 ubi50 )
		(ubicacion-humano persona36 ubi34 )
		(ubicacion-humano persona37 ubi11 )
		(ubicacion-humano persona38 ubi98 )
		(ubicacion-humano persona39 ubi7 )
		(ubicacion-humano persona40 ubi89 )
		(ubicacion-humano persona41 ubi46 )
		(ubicacion-humano persona42 ubi47 )
		(ubicacion-humano persona43 ubi98 )
		(ubicacion-humano persona44 ubi19 )
		(ubicacion-humano persona45 ubi38 )
		(ubicacion-humano persona46 ubi64 )
		(ubicacion-humano persona47 ubi65 )
		(ubicacion-humano persona48 ubi20 )
		(ubicacion-humano persona49 ubi88 )
		(ubicacion-humano persona50 ubi88 )
		(ubicacion-humano persona51 ubi80 )
		(ubicacion-humano persona52 ubi77 )
		(ubicacion-humano persona53 ubi16 )
		(ubicacion-humano persona54 ubi46 )
		(ubicacion-humano persona55 hospital )
		(ubicacion-humano persona56 ubi4 )
		(ubicacion-humano persona57 ubi20 )
		(ubicacion-humano persona58 ubi68 )
		(ubicacion-humano persona59 ubi18 )
		(ubicacion-humano persona60 ubi98 )
		(ubicacion-humano persona61 ubi45 )
		(ubicacion-humano persona62 ubi53 )
		(ubicacion-humano persona63 ubi4 )
		(ubicacion-humano persona64 ubi92 )
		(ubicacion-humano persona65 ubi71 )
		(ubicacion-humano persona66 ubi76 )
		(ubicacion-humano persona67 ubi67 )
		(ubicacion-humano persona68 ubi31 )
		(ubicacion-humano persona69 ubi10 )
		(ubicacion-humano persona70 ubi37 )
		(ubicacion-humano persona71 ubi42 )
		(ubicacion-humano persona72 ubi25 )
		(ubicacion-humano persona73 ubi41 )
		(ubicacion-humano persona74 ubi30 )
		(ubicacion-humano persona75 ubi69 )
		(ubicacion-humano persona76 ubi42 )
		(ubicacion-humano persona77 ubi56 )
		(ubicacion-humano persona78 ubi89 )
		(ubicacion-humano persona79 ubi86 )
		(ubicacion-humano persona80 ubi6 )
		(ubicacion-humano persona81 ubi54 )
		(ubicacion-humano persona82 ubi70 )
		(ubicacion-humano persona83 ubi96 )
		(ubicacion-humano persona84 ubi85 )
		(ubicacion-humano persona85 ubi46 )
		(ubicacion-humano persona86 ubi63 )
		(ubicacion-humano persona87 ubi26 )
		(ubicacion-humano persona88 ubi52 )
		(ubicacion-humano persona89 ubi99 )
		(ubicacion-humano persona90 ubi5 )
		(ubicacion-humano persona91 ubi24 )
		(ubicacion-humano persona92 ubi8 )
		(ubicacion-humano persona93 ubi20 )
		(ubicacion-humano persona94 ubi38 )
		(ubicacion-humano persona95 ubi63 )
		(ubicacion-humano persona96 ubi16 )
		(ubicacion-humano persona97 ubi31 )
		(ubicacion-humano persona98 ubi23 )
		(ubicacion-humano persona99 ubi72 )
		(ubicacion-humano persona100 ubi66 )

		(contenido-caja caja1 comida)
		(contenido-caja caja2 comida)
		(contenido-caja caja3 comida)
		(contenido-caja caja4 comida)
		(contenido-caja caja5 comida)
		(contenido-caja caja6 comida)
		(contenido-caja caja7 comida)
		(contenido-caja caja8 comida)
		(contenido-caja caja9 comida)
		(contenido-caja caja10 comida)
		(contenido-caja caja11 comida)
		(contenido-caja caja12 comida)
		(contenido-caja caja13 comida)
		(contenido-caja caja14 comida)
		(contenido-caja caja15 comida)
		(contenido-caja caja16 comida)
		(contenido-caja caja17 comida)
		(contenido-caja caja18 comida)
		(contenido-caja caja19 comida)
		(contenido-caja caja20 comida)
		(contenido-caja caja21 comida)
		(contenido-caja caja22 comida)
		(contenido-caja caja23 comida)
		(contenido-caja caja24 comida)
		(contenido-caja caja25 comida)
		(contenido-caja caja26 comida)
		(contenido-caja caja27 comida)
		(contenido-caja caja28 comida)
		(contenido-caja caja29 comida)
		(contenido-caja caja30 comida)
		(contenido-caja caja31 comida)
		(contenido-caja caja32 comida)
		(contenido-caja caja33 comida)
		(contenido-caja caja34 comida)
		(contenido-caja caja35 comida)
		(contenido-caja caja36 comida)
		(contenido-caja caja37 comida)
		(contenido-caja caja38 comida)
		(contenido-caja caja39 comida)
		(contenido-caja caja40 comida)
		(contenido-caja caja41 comida)
		(contenido-caja caja42 comida)
		(contenido-caja caja43 comida)
		(contenido-caja caja44 comida)
		(contenido-caja caja45 comida)
		(contenido-caja caja46 comida)
		(contenido-caja caja47 comida)
		(contenido-caja caja48 comida)
		(contenido-caja caja49 comida)
		(contenido-caja caja50 comida)
		(contenido-caja caja51 comida)
		(contenido-caja caja52 comida)
		(contenido-caja caja53 comida)
		(contenido-caja caja54 comida)
		(contenido-caja caja55 comida)
		(contenido-caja caja56 comida)
		(contenido-caja caja57 comida)
		(contenido-caja caja58 comida)
		(contenido-caja caja59 comida)
		(contenido-caja caja60 comida)
		(contenido-caja caja61 comida)
		(contenido-caja caja62 comida)
		(contenido-caja caja63 comida)
		(contenido-caja caja64 comida)
		(contenido-caja caja65 comida)
		(contenido-caja caja66 comida)
		(contenido-caja caja67 comida)
		(contenido-caja caja68 comida)
		(contenido-caja caja69 comida)
		(contenido-caja caja70 comida)
		(contenido-caja caja71 comida)
		(contenido-caja caja72 comida)
		(contenido-caja caja73 comida)
		(contenido-caja caja74 comida)
		(contenido-caja caja75 comida)
		(contenido-caja caja76 comida)
		(contenido-caja caja77 comida)
		(contenido-caja caja78 comida)
		(contenido-caja caja79 comida)
		(contenido-caja caja80 comida)
		(contenido-caja caja81 comida)
		(contenido-caja caja82 comida)
		(contenido-caja caja83 comida)
		(contenido-caja caja84 medicinas)
		(contenido-caja caja85 medicinas)
		(contenido-caja caja86 medicinas)
		(contenido-caja caja87 bebida)
		(contenido-caja caja88 bebida)
		(contenido-caja caja89 bebida)
		(contenido-caja caja90 bebida)
		(contenido-caja caja91 bebida)
		(contenido-caja caja92 bebida)
		(contenido-caja caja93 bebida)
		(contenido-caja caja94 bebida)
		(contenido-caja caja95 bebida)
		(contenido-caja caja96 bebida)
		(contenido-caja caja97 bebida)
		(contenido-caja caja98 bebida)
		(contenido-caja caja99 bebida)
		(contenido-caja caja100 bebida)

		(humano-necesita persona1 comida)
		(humano-necesita persona2 comida)
		(humano-necesita persona3 comida)
		(humano-necesita persona4 comida)
		(humano-necesita persona5 comida)
		(humano-necesita persona6 comida)
		(humano-necesita persona7 comida)
		(humano-necesita persona7 bebida)
		(humano-necesita persona12 comida)
		(humano-necesita persona13 comida)
		(humano-necesita persona13 bebida)
		(humano-necesita persona15 comida)
		(humano-necesita persona16 comida)
		(humano-necesita persona16 bebida)
		(humano-necesita persona17 comida)
		(humano-necesita persona17 bebida)
		(humano-necesita persona18 comida)
		(humano-necesita persona20 comida)
		(humano-necesita persona21 comida)
		(humano-necesita persona21 medicinas)
		(humano-necesita persona22 comida)
		(humano-necesita persona23 comida)
		(humano-necesita persona24 comida)
		(humano-necesita persona25 comida)
		(humano-necesita persona26 comida)
		(humano-necesita persona26 bebida)
		(humano-necesita persona27 comida)
		(humano-necesita persona28 comida)
		(humano-necesita persona29 comida)
		(humano-necesita persona30 comida)
		(humano-necesita persona32 comida)
		(humano-necesita persona33 comida)
		(humano-necesita persona34 comida)
		(humano-necesita persona35 comida)
		(humano-necesita persona36 comida)
		(humano-necesita persona37 comida)
		(humano-necesita persona38 comida)
		(humano-necesita persona39 comida)
		(humano-necesita persona40 comida)
		(humano-necesita persona42 comida)
		(humano-necesita persona43 comida)
		(humano-necesita persona44 comida)
		(humano-necesita persona45 comida)
		(humano-necesita persona46 comida)
		(humano-necesita persona46 bebida)
		(humano-necesita persona47 comida)
		(humano-necesita persona48 comida)
		(humano-necesita persona49 comida)
		(humano-necesita persona51 comida)
		(humano-necesita persona52 comida)
		(humano-necesita persona52 bebida)
		(humano-necesita persona53 comida)
		(humano-necesita persona53 bebida)
		(humano-necesita persona54 comida)
		(humano-necesita persona55 comida)
		(humano-necesita persona56 comida)
		(humano-necesita persona57 comida)
		(humano-necesita persona58 comida)
		(humano-necesita persona58 bebida)
		(humano-necesita persona61 comida)
		(humano-necesita persona62 comida)
		(humano-necesita persona63 comida)
		(humano-necesita persona63 bebida)
		(humano-necesita persona65 comida)
		(humano-necesita persona66 comida)
		(humano-necesita persona67 comida)
		(humano-necesita persona68 comida)
		(humano-necesita persona69 comida)
		(humano-necesita persona70 comida)
		(humano-necesita persona71 comida)
		(humano-necesita persona72 comida)
		(humano-necesita persona73 comida)
		(humano-necesita persona75 comida)
		(humano-necesita persona76 comida)
		(humano-necesita persona77 comida)
		(humano-necesita persona78 bebida)
		(humano-necesita persona79 comida)
		(humano-necesita persona80 comida)
		(humano-necesita persona81 comida)
		(humano-necesita persona82 comida)
		(humano-necesita persona83 comida)
		(humano-necesita persona85 comida)
		(humano-necesita persona86 comida)
		(humano-necesita persona87 comida)
		(humano-necesita persona87 medicinas)
		(humano-necesita persona88 comida)
		(humano-necesita persona88 bebida)
		(humano-necesita persona90 comida)
		(humano-necesita persona91 comida)
		(humano-necesita persona92 comida)
		(humano-necesita persona93 comida)
		(humano-necesita persona94 comida)
		(humano-necesita persona95 comida)
		(humano-necesita persona96 comida)
		(humano-necesita persona97 comida)
		(humano-necesita persona97 medicinas)
		(humano-necesita persona97 bebida)
		(humano-necesita persona99 comida)
		(humano-necesita persona99 bebida)
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
		(humano-satisfecho persona7 bebida)
		(humano-satisfecho persona12 comida)
		(humano-satisfecho persona13 comida)
		(humano-satisfecho persona13 bebida)
		(humano-satisfecho persona15 comida)
		(humano-satisfecho persona16 comida)
		(humano-satisfecho persona16 bebida)
		(humano-satisfecho persona17 comida)
		(humano-satisfecho persona17 bebida)
		(humano-satisfecho persona18 comida)
		(humano-satisfecho persona20 comida)
		(humano-satisfecho persona21 comida)
		(humano-satisfecho persona21 medicinas)
		(humano-satisfecho persona22 comida)
		(humano-satisfecho persona23 comida)
		(humano-satisfecho persona24 comida)
		(humano-satisfecho persona25 comida)
		(humano-satisfecho persona26 comida)
		(humano-satisfecho persona26 bebida)
		(humano-satisfecho persona27 comida)
		(humano-satisfecho persona28 comida)
		(humano-satisfecho persona29 comida)
		(humano-satisfecho persona30 comida)
		(humano-satisfecho persona32 comida)
		(humano-satisfecho persona33 comida)
		(humano-satisfecho persona34 comida)
		(humano-satisfecho persona35 comida)
		(humano-satisfecho persona36 comida)
		(humano-satisfecho persona37 comida)
		(humano-satisfecho persona38 comida)
		(humano-satisfecho persona39 comida)
		(humano-satisfecho persona40 comida)
		(humano-satisfecho persona42 comida)
		(humano-satisfecho persona43 comida)
		(humano-satisfecho persona44 comida)
		(humano-satisfecho persona45 comida)
		(humano-satisfecho persona46 comida)
		(humano-satisfecho persona46 bebida)
		(humano-satisfecho persona47 comida)
		(humano-satisfecho persona48 comida)
		(humano-satisfecho persona49 comida)
		(humano-satisfecho persona51 comida)
		(humano-satisfecho persona52 comida)
		(humano-satisfecho persona52 bebida)
		(humano-satisfecho persona53 comida)
		(humano-satisfecho persona53 bebida)
		(humano-satisfecho persona54 comida)
		(humano-satisfecho persona55 comida)
		(humano-satisfecho persona56 comida)
		(humano-satisfecho persona57 comida)
		(humano-satisfecho persona58 comida)
		(humano-satisfecho persona58 bebida)
		(humano-satisfecho persona61 comida)
		(humano-satisfecho persona62 comida)
		(humano-satisfecho persona63 comida)
		(humano-satisfecho persona63 bebida)
		(humano-satisfecho persona65 comida)
		(humano-satisfecho persona66 comida)
		(humano-satisfecho persona67 comida)
		(humano-satisfecho persona68 comida)
		(humano-satisfecho persona69 comida)
		(humano-satisfecho persona70 comida)
		(humano-satisfecho persona71 comida)
		(humano-satisfecho persona72 comida)
		(humano-satisfecho persona73 comida)
		(humano-satisfecho persona75 comida)
		(humano-satisfecho persona76 comida)
		(humano-satisfecho persona77 comida)
		(humano-satisfecho persona78 bebida)
		(humano-satisfecho persona79 comida)
		(humano-satisfecho persona80 comida)
		(humano-satisfecho persona81 comida)
		(humano-satisfecho persona82 comida)
		(humano-satisfecho persona83 comida)
		(humano-satisfecho persona85 comida)
		(humano-satisfecho persona86 comida)
		(humano-satisfecho persona87 comida)
		(humano-satisfecho persona87 medicinas)
		(humano-satisfecho persona88 comida)
		(humano-satisfecho persona88 bebida)
		(humano-satisfecho persona90 comida)
		(humano-satisfecho persona91 comida)
		(humano-satisfecho persona92 comida)
		(humano-satisfecho persona93 comida)
		(humano-satisfecho persona94 comida)
		(humano-satisfecho persona95 comida)
		(humano-satisfecho persona96 comida)
		(humano-satisfecho persona97 comida)
		(humano-satisfecho persona97 medicinas)
		(humano-satisfecho persona97 bebida)
		(humano-satisfecho persona99 comida)
		(humano-satisfecho persona99 bebida)
		(humano-satisfecho persona100 comida)
		))
)
