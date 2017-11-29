class EventoEscuela < ApplicationRecord
  validates :nombre, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :lugar, presence: { message: "No puede estar en blanco"}
  validates :descripcion, length: {in: 5..500, message:"La descripcion debe tener entre 5 y 500 caracteres."},presence: { message: "No puede estar en blanco"}
  validates :fecha, presence: { message: "No puede estar en blanco"}
  validates :hora, presence: { message: "No puede estar en blanco"}
end
