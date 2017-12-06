class Programa < ApplicationRecord
  validates :nombre, format: { with: /\A[a-zA-Zá-é-í-ó-ú ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :perfil_egreso, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :campo_ocupacional, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :link_malla, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}

end
