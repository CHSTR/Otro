class Casilla < ApplicationRecord
	validates :nombre, format: { with: /\A[a-zA-Zá-źÁ-É-Í-Ó-Ú ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 2 , message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
	validates :activo, presence: { message: "No puede estar en blanco"}
	validates :link, presence: { message: "No puede estar en blanco"}
	#validates :ver, presence: { message: "No puede estar en blanco"}
	validates :ubicacion, presence: { message: "No puede estar en blanco"}
end
