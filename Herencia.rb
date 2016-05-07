class Tesoro
	def initialize(nombre=nil,descripcion=nil)
		@nombre = nombre
		@descripcion = descripcion
	end


	def get_nombre
		return @nombre
	end
	def set_nombre(nombre)
		@nombre = nombre
	end

	def get_descripcion
		return @descripcion
	end
	def set_descripcio(descripcion)
		@descripcion = descripcion
	end

	def to_s #sobreescribimos el metodo por defecto to_s
		"El tesoro nombre #{@nombre} es #{@get_descripcion}\n"
	end
end

mi_tesoro = Tesoro.new
mi_tesoro.set_nombre("Kilo")
print "mi_tesoro se llama kilo\"#{mi_tesoro.get_nombre} y es #{mi_tesoro.get_descripcion}\"\n";

tu_tesoro = Tesoro.new("Ezperanza Gomez", "Es la Mejor de las mejores")
puts tu_tesoro.to_s
#Motodo inspect mostrar lo que hay en el objeto
puts "Inspeccionando el tesoro #{mi_tesoro.inspect}"
p(tu_tesoro)