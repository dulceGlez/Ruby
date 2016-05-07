class Vehiculo
	def initialize(dueno=nil, puertas=nil, ruedas=nil)
		@dueno=dueno
		@puertas=puertas
		@ruedas=ruedas
	end

	def caracteristicas
		return "Las caracteristicas del vehiculo son..."
	end

	def dueno
		return @dueno
	end
	def puertas
		return @puertas
	end
	def ruedas
		return @ruedas
	end

	def dueno=(dueno)
		@dueno = dueno
	end
	def puertas=(puertas)
		@puertas = puertas
	end
	def ruedas=(ruedas)
		@ruedas = ruedas
	end
end

class Automivil < Vehiculo
	def initialize(dueno=nil, puertas=nil, ruedas=nil, descapotable=nil)
		super(dueno, puertas, ruedas)
		@descapotable = descapotable	
	end
	def descapotable
		return @descapotable
	end
	def descapotable=(descapotable)
		@descapotable=descapotable
	end

	def subir
		puts "Subiendo el Automivil"
	end
	def bajar
		puts "Bajando el automovil"
	end
end

class Camioneta < Vehiculo
	def initialize(dueno=nil, puertas=nil, ruedas=nil, tara=nil, carga=nil)
		super(dueno, puertas, ruedas)
		@tara = tara
		@carga= carga
	end
	def tara
		return @tara
	end
	def carga
		return @carga
	end
	def tara=(tara)
		@tara= tara
	end
	def carga=(carga)
		@carga= carga
	end

	def cargar(kilos)
	@carga+=kilos
	end
end

mi_automovil = Automivil.new("Juan Perez", 5, 4, false)
p(mi_automovil)

mi_camioneta = Camioneta.new("Maria Sanchez", 2, 4, 1000, 0)
mi_camioneta.cargar(200)
puts "La camioneta tiene la carga de #{mi_camioneta.carga} kilos."

mi_camioneta.cargar(300)
puts "La camioneta tiene la carga de #{mi_camioneta.carga} kilos."

mi_camioneta.tara = 3000
puts "La tara de mi camioneta es #{mi_camioneta.tara}"