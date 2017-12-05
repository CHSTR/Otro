class Proyecto < ApplicationRecord
	#has_and_belongs_to_many :academicos
	validates :nombre, length: {minimum: 5, message:"Ingrese un texto más largo."},presence: { message: "No puede estar en blanco"}
	validates :descripcion, length: {minimum: 5, message:"Ingrese un texto más largo."},presence: { message: "No puede estar en blanco"}
end
