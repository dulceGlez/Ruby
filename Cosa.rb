class Cosa
	attr_reader :descripcion
	attr_writer :descripcion
	def initialize(descripcion)
		@descripcion= descripcion
	end

end
tu_cosa = Cosa.new("Esta bien")
p(tu_cosa)
tu_cosa.descripcion = "Mas o menos"
puts "descripcion: #{tu_cosa.descripcion}"
#Concatenamos una cadena de la cadena ya existente
tu_cosa.descripcion << ", pero todavia pasa." 
puts "descripcion: #{tu_cosa.descripcion}"