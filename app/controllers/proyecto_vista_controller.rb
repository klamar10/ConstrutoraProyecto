class ProyectoVistaController < ApplicationController

	def proyecto
		# Aca debe usarse Post.all
		# Declarando Data ficticia
		@listProyecto = [
			[ id = 7, name = 'Miraflores', imagen = '/assets/Proy1.jpg', metros = '120mts', areaComunes = 'No', cantBaños = 5,
			  areascomunes = [
			  	[ imagen = 'park1.jpg', descripcion= 'Parque'],
			  	[ imagen = 'hola.jpg', descripcion= 'mejorandola']
			  ], planos = [
			  	[imagen = 'plano1.jpg', descripcion = 'duplex'],
			  	[imagen = 'plano2.jpg', descripcion = 'flat']
			  ]
			],
			[ id = 4, name = 'Barranco', imagen = '/assets/Proy2.jpg', metros = '500mts', areaComunes = 'Si', cantBaños = 6, 
				planos = [
					[ descripcion= 'Areas Verdes'],
			  		[ descripcion= 'mejorandola'],
			  		[ descripcion= 'mejorandola']	
				]
			],
			[ id = 5, name = 'Magdalena', imagen = '/assets/Proy3.jpg' , metros = '500mts', areaComunes = 'Si', cantBaños = 6, 
				planos = [
					[ descripcion= 'Areas Verdes'],
			  		[ descripcion= 'mejorandola'],
			  		[ descripcion= 'mejorandola']	
				]
			]
		]



		# Una tabla de proyecto con datos basicos ----- asigna un ID, Ejemplo 5, id=5, name=Miraflores, direcion=aaaa, imagen=''
		# Una tabla llamada caracteristicas y la relacionan con el id del PRoyecto 
		# Ejemplo : Id=5 , metros=10, sshh=5, estacionamiento=si

	end

	def detalle
		# Aca debe usarse Post.find(params[:id])
		@listProyecto = [
			[ id = 7, name = 'Miraflores', imagen = '/assets/Proy1.jpg', metros = '120mts', areaComunes = 'No', cantBaños = 5,
			  planos = [
			  	[ descripcion= 'Parque'],
			  	[ imagen= 'hola.jpg', descripcion= 'mejorandola']
			  ], 
			  planos = [
			  	[imagen = 'plano1.jpg', descripcion = 'duplex'],
			  	[imagen = 'plano2.jpg', descripcion = 'flat']
			  ]
			],
		[ id = 4, name = 'Barranco', imagen = '/assets/Proy2.jpg', metros = '500mts', areaComunes = 'Si', cantBaños = 6, 
				planos = [
					[ descripcion= 'Areas Verdes'],
			  		[ descripcion= 'mejorandola'],
			  		[ descripcion= 'mejorandola']	
				]
			],			
		[ id = 5, name = 'Magdalena', imagen = '/assets/Proy3.jpg', metros = '500mts', areaComunes = 'Si', cantBaños = 6, 
				planos = [
					[ descripcion= 'Areas Verdes'],
			  		[ descripcion= 'mejorandola'],
			  		[ descripcion= 'mejorandola']	
				]
			]
		]


		@listProyecto.each do |proyecto|

			if proyecto[0].to_i  == params[:id].to_i 
				@proyectoSearch = proyecto
			end
		end

		# Fin ficticio
	end

	def consultar
		end
		

	def ubicacion
	end
	
end
