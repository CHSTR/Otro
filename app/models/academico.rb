class Academico < ApplicationRecord
	#has_many :casillas
	#has_and_belongs_to_many :proyectos
	  validates :nombre, format: { with: /\A[a-zA-Z ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
	  validates :apellido, format: { with: /\A[a-zA-Z ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 5, message:"El apellido es muy corto."},presence: { message: "No puede estar en blanco"}
	  validates :titulo_profesional, length: {minimum: 5, message:"Ingrese un texto más largo."},presence: { message: "No puede estar en blanco"}
	  validates :grado, length: {minimum: 5, message:"Ingrese un texto más largo."},presence: { message: "No puede estar en blanco"}
	  validates :area_interes, length: {minimum: 5, message:"Ingrese un texto más largo."},presence: { message: "No puede estar en blanco"}
	  validates :correo, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "¡Ingrese un correo electronico correcto!"}, length: {minimum: 5},presence: { message: "No puede estar en blanco"}
	  #validates :imagen
	  #validates :link1
	  #validates :link2
	  #validates :link3
	  validates :descripcion, length: {minimum: 5, message:"Ingrese un texto más largo."},presence: { message: "No puede estar en blanco"}
	  #validates :curriculum, presence: true
end
