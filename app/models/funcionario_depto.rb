class FuncionarioDepto < ApplicationRecord
	#belongs_to :funcionario_tipo_depto
	validates :nombre, format: { with: /\A[a-zA-Zá-é-í-ó-ú ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
	validates :cargo, length: {minimum: 5, message:"El apellido es muy corto."},presence: { message: "No puede estar en blanco"}
	validates :correo, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "¡Ingrese un correo electronico correcto!"}, length: {minimum: 5},presence: { message: "No puede estar en blanco"}
end
