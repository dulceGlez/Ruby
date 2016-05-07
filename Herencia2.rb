class Vehiculo
	attr_reader :dueno, :puertas, :ruedas
	attr_writer :dueno, :puertas, :ruedas


	def initialize(dueno=nil, puertas=nil, ruedas=nil)
		@dueno=dueno
		@puertas=puertas
		@ruedas=ruedas
	end
end
	

class Automivil < Vehiculo
	def initialize(dueno=nil, puertas=nil, ruedas=nil, descapotable=nil)
		super(dueno, puertas, ruedas)
		@descapotable = descapotable	
	end
	
end

class Camioneta < Vehiculo
	def initialize(dueno=nil, puertas=nil, ruedas=nil, tara=nil, carga=nil)
		super(dueno, puertas, ruedas)
		@tara = tara
		@carga= carga
	end
	attr_writer :tara, :carga
	attr_reader  :tara, :carga
	

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