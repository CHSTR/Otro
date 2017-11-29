class Programa < ApplicationRecord
  validates :nombre, format: { with: /\A[a-zA-Z ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :perfil_egreso, format: { with: /\A[a-zA-Z ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :campo_ocupacional, format: { with: /\A[a-zA-Z ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :link_malla, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}

end
