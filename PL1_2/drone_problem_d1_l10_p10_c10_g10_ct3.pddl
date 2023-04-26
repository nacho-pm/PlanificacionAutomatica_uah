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
		parque - ubicacion
		mercado - ubicacion
		teatro - ubicacion
		bolera - ubicacion
		cine - ubicacion
		estadio - ubicacion
		hospital - ubicacion
		campo - ubicacion
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
		(=(coste-vuelo parque mercado) 5)
		(=(coste-vuelo mercado parque) 5)
		(=(coste-vuelo parque teatro) 10)
		(=(coste-vuelo teatro parque) 10)
		(=(coste-vuelo parque bolera) 15)
		(=(coste-vuelo bolera parque) 15)
		(=(coste-vuelo parque cine) 20)
		(=(coste-vuelo cine parque) 20)
		(=(coste-vuelo parque estadio) 25)
		(=(coste-vuelo estadio parque) 25)
		(=(coste-vuelo parque hospital) 30)
		(=(coste-vuelo hospital parque) 30)
		(=(coste-vuelo parque campo) 35)
		(=(coste-vuelo campo parque) 35)
		(=(coste-vuelo parque ubi9) 40)
		(=(coste-vuelo ubi9 parque) 40)
		(=(coste-vuelo parque deposito) 45)
		(=(coste-vuelo deposito parque) 45)
		(=(coste-vuelo mercado teatro) 5)
		(=(coste-vuelo teatro mercado) 5)
		(=(coste-vuelo mercado bolera) 10)
		(=(coste-vuelo bolera mercado) 10)
		(=(coste-vuelo mercado cine) 15)
		(=(coste-vuelo cine mercado) 15)
		(=(coste-vuelo mercado estadio) 20)
		(=(coste-vuelo estadio mercado) 20)
		(=(coste-vuelo mercado hospital) 25)
		(=(coste-vuelo hospital mercado) 25)
		(=(coste-vuelo mercado campo) 30)
		(=(coste-vuelo campo mercado) 30)
		(=(coste-vuelo mercado ubi9) 35)
		(=(coste-vuelo ubi9 mercado) 35)
		(=(coste-vuelo mercado deposito) 40)
		(=(coste-vuelo deposito mercado) 40)
		(=(coste-vuelo teatro bolera) 5)
		(=(coste-vuelo bolera teatro) 5)
		(=(coste-vuelo teatro cine) 10)
		(=(coste-vuelo cine teatro) 10)
		(=(coste-vuelo teatro estadio) 15)
		(=(coste-vuelo estadio teatro) 15)
		(=(coste-vuelo teatro hospital) 20)
		(=(coste-vuelo hospital teatro) 20)
		(=(coste-vuelo teatro campo) 25)
		(=(coste-vuelo campo teatro) 25)
		(=(coste-vuelo teatro ubi9) 30)
		(=(coste-vuelo ubi9 teatro) 30)
		(=(coste-vuelo teatro deposito) 35)
		(=(coste-vuelo deposito teatro) 35)
		(=(coste-vuelo bolera cine) 5)
		(=(coste-vuelo cine bolera) 5)
		(=(coste-vuelo bolera estadio) 10)
		(=(coste-vuelo estadio bolera) 10)
		(=(coste-vuelo bolera hospital) 15)
		(=(coste-vuelo hospital bolera) 15)
		(=(coste-vuelo bolera campo) 20)
		(=(coste-vuelo campo bolera) 20)
		(=(coste-vuelo bolera ubi9) 25)
		(=(coste-vuelo ubi9 bolera) 25)
		(=(coste-vuelo bolera deposito) 30)
		(=(coste-vuelo deposito bolera) 30)
		(=(coste-vuelo cine estadio) 5)
		(=(coste-vuelo estadio cine) 5)
		(=(coste-vuelo cine hospital) 10)
		(=(coste-vuelo hospital cine) 10)
		(=(coste-vuelo cine campo) 15)
		(=(coste-vuelo campo cine) 15)
		(=(coste-vuelo cine ubi9) 20)
		(=(coste-vuelo ubi9 cine) 20)
		(=(coste-vuelo cine deposito) 25)
		(=(coste-vuelo deposito cine) 25)
		(=(coste-vuelo estadio hospital) 5)
		(=(coste-vuelo hospital estadio) 5)
		(=(coste-vuelo estadio campo) 10)
		(=(coste-vuelo campo estadio) 10)
		(=(coste-vuelo estadio ubi9) 15)
		(=(coste-vuelo ubi9 estadio) 15)
		(=(coste-vuelo estadio deposito) 20)
		(=(coste-vuelo deposito estadio) 20)
		(=(coste-vuelo hospital campo) 5)
		(=(coste-vuelo campo hospital) 5)
		(=(coste-vuelo hospital ubi9) 10)
		(=(coste-vuelo ubi9 hospital) 10)
		(=(coste-vuelo hospital deposito) 15)
		(=(coste-vuelo deposito hospital) 15)
		(=(coste-vuelo campo ubi9) 5)
		(=(coste-vuelo ubi9 campo) 5)
		(=(coste-vuelo campo deposito) 10)
		(=(coste-vuelo deposito campo) 10)
		(=(coste-vuelo ubi9 deposito) 5)
		(=(coste-vuelo deposito ubi9) 5)

		(=(coste-total) 0)

		(siguiente n0 n1 )
		(siguiente n1 n2 )
		(siguiente n2 n3 )
		(siguiente n3 n4 )

		(ubicacion-dron dron1 deposito )

		(ubicacion-transportador transportador1 deposito)

		(llenado-actual transportador1 n0)
		(ubicacion-humano persona1 bolera )
		(ubicacion-humano persona2 campo )
		(ubicacion-humano persona3 mercado )
		(ubicacion-humano persona4 cine )
		(ubicacion-humano persona5 hospital )
		(ubicacion-humano persona6 teatro )
		(ubicacion-humano persona7 parque )
		(ubicacion-humano persona8 estadio )
		(ubicacion-humano persona9 campo )
		(ubicacion-humano persona10 hospital )

		(dron-vacio dron1)

		(contenido-caja comida caja1)
		(contenido-caja comida caja2)
		(contenido-caja comida caja3)
		(contenido-caja comida caja4)
		(contenido-caja comida caja5)
		(contenido-caja comida caja6)
		(contenido-caja medicinas caja7)
		(contenido-caja bebida caja8)
		(contenido-caja bebida caja9)
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


		(humano-necesita persona2 comida)
		(humano-necesita persona2 bebida)
		(humano-necesita persona5 medicinas)
		(humano-necesita persona5 bebida)
		(humano-necesita persona6 comida)
		(humano-necesita persona7 comida)
		(humano-necesita persona8 comida)
		(humano-necesita persona8 bebida)
		(humano-necesita persona9 comida)
		(humano-necesita persona10 comida)
	)
	(:goal (and
		(ubicacion-dron dron1 deposito)

		(ubicacion-transportador transportador1 deposito)

		(humano-satisfecho persona2 comida)
		(humano-satisfecho persona2 bebida)
		(humano-satisfecho persona5 medicinas)
		(humano-satisfecho persona5 bebida)
		(humano-satisfecho persona6 comida)
		(humano-satisfecho persona7 comida)
		(humano-satisfecho persona8 comida)
		(humano-satisfecho persona8 bebida)
		(humano-satisfecho persona9 comida)
		(humano-satisfecho persona10 comida)
	))

	(:metric minimize (coste-total))
)
