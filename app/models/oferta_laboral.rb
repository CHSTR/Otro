class OfertaLaboral < ApplicationRecord
	validates :nombre, format: { with: /\A[a-zA-Z ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
	validates :correo, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "¡Ingrese un correo electronico correcto!"}, length: {minimum: 5},presence: { message: "No puede estar en blanco"}
	#validates :oferta_d
	validates :cargo, presence: true, if: "oferta_d == 1"
	validates :empresa, presence: true, if: "oferta_d == 1"
	validates :descripcion, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}

	  #t.string :nombre
      #t.string :empresa
      #t.string :cargo
      #t.string :correo
      #t.string :descripcion
      #t.integer :aceptado
end
