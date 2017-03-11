class GestionPageObject

	# TODO:
	# Atributo con el nombre de la ventana de gestión,
	# para pasárselo al Navigate_to, hacer el container.set ...

	# TODO:
	# ¿Cómo invocar/ navegar a la página de gestión cada vez que se llama a alguno
	# de los métodos de la clase?
	def GestionPageObject
		# Navigate_to ...
		# container.set frame ("")
	end

	def limpiar_busqueda()
		# Limpia todos los criterios de búsqueda
	end

	def buscar_entidad_por_codigo(codigo_entidad)
		# Limpiar todos los criterios de búsqueda
		limpiar_busqueda()
		# Introducir valor por parámetro en text_box "Código"
		# Pulsar botón "Buscar"
		# Devolver el número de filas de la tabla (ie., registros devueltos por la búsqueda)
	end

	def editar_entidad_por_codigo(codigo_entidad)
		buscar_entidad_por_codigo(codigo_entidad)
		# Seleccionar el primer registro de la tabla
		# Pulsar botón "Editar"
		# Cerrar ventana gestión
		# Cambiar container a la ventana de edición
	end

	def nuevo()
		# Crear una nueva entidad desde el gestor de operaciones
		# Cerrar ventana gestión
		# Cambiar container a la ventana de edición (nueva entidad)
	end


end
