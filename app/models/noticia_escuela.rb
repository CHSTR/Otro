class NoticiaEscuela < ApplicationRecord
  validates :nombre, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :cuerpo, length: {minimum: 5, message:"Ingrese un texto más largo."},presence: { message: "No puede estar en blanco"}
  validates :descripcion, length: {in: 5..700, message:"La descripcion debe tener entre 5 y 700 caracteres."},presence: { message: "No puede estar en blanco"}
end
