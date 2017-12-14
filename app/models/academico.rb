class Academico < ApplicationRecord
	#has_many :casillas
	#has_and_belongs_to_many :proyectos

	has_attached_file :photo, styles: {large: "800x800>", medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
	  validates :nombre, format: { with: /\A[a-zA-Zá-é-í-ó-ú ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 3, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
	  validates :apellido, format: { with: /\A[a-zA-Zá-é-í-ó-ú ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 3, message:"El apellido es muy corto."},presence: { message: "No puede estar en blanco"}
	  validates :titulo_profesional, length: {minimum: 5, message:"Ingrese un texto más largo."},presence: { message: "No puede estar en blanco"}
	  validates :grado, length: {minimum: 5, message:"Ingrese un texto más largo."},presence: { message: "No puede estar en blanco"}
	  validates :area_interes, length: {minimum: 5, message:"Ingrese un texto más largo."},presence: { message: "No puede estar en blanco"}
	  validates :correo, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "¡Ingrese un correo electronico correcto!"}, length: {minimum: 5, message: "Correo Electrónico Muy Corto"},presence: { message: "No puede estar en blanco"}
	  #validates :imagen
	  #validates :link1
	  #validates :link2
	  #validates :link3
	  validates :descripcion, length: {minimum: 5, message:"Ingrese un texto más largo."},presence: { message: "No puede estar en blanco"}
	  #validates :curriculum, presence: true
end
