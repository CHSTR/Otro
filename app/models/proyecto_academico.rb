class ProyectoAcademico < ApplicationRecord
	belongs_to :academicos
	belongs_to :proyectos
	#accepts_nested_attributes_for :proyectos
end
