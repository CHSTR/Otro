class EventoEscuela < ApplicationRecord

  has_attached_file :photo, styles: {large: "800x800>", medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates :nombre, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :lugar, presence: { message: "No puede estar en blanco"}
  validates :descripcion, length: {in: 5..500, message:"La descripcion debe tener entre 5 y 500 caracteres."},presence: { message: "No puede estar en blanco"}
  validates :fecha, presence: { message: "No puede estar en blanco"}
  validates :hora, presence: { message: "No puede estar en blanco"}
end
