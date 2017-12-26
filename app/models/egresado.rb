class Egresado < ApplicationRecord
	  validates :nombre, format: { with: /\A[a-zA-Zá-ź ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 3, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
	  #validates :ap, format: { with: /\A[a-zA-Zá-é-í-ó-ú ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 3, message:"El apellido es muy corto."},presence: { message: "No puede estar en blanco"}
	  validates :contacto_empresa, length: {minimum: 3, message:"Ingrese un texto más largo."},presence: { message: "No puede estar en blanco"}
	  validates :anio, numericality: {only_integer: true, greater_than_or_equal_to: 2012, less_than_or_equal_to: 2017, message:"Debe ser mayor a 2012 y menor o igual que el año actual"}
	  validates :programa,presence: { message: "No puede estar en blanco"}
	  validates :correo, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "¡Ingrese un correo electronico correcto!"}, length: {minimum: 5, message: "Correo Electrónico Muy Corto"},presence: { message: "No puede estar en blanco"}
end
