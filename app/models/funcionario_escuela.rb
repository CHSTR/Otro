class FuncionarioEscuela < ApplicationRecord
  has_attached_file :photo, styles: {large: "800x800>", medium: "500x500>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates :nombre, format: { with: /\A[a-zA-Zá-é-í-ó-ú ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :cargo, length: {minimum: 5, message:"El apellido es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :correo, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "¡Ingrese un correo electronico correcto!"}, length: {minimum: 5, message: "Correo Electrónico Muy Corto"},presence: { message: "No puede estar en blanco"}
end
