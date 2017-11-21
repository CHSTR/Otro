class Academico < ApplicationRecord
	has_many :casillas
	has_and_belongs_to_many :proyectos
end
