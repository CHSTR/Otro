class CentroAlumno < ApplicationRecord
  has_attached_file :photo, styles: {large: "800x800>", medium: "500x500>", thumb: "180x180>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates :presidente, format: { with: /\A[a-zA-Zá-é-í-ó-ú ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :vicepresidente, format: { with: /\A[a-zA-Zá-é-í-ó-ú ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :otros, format: { with: /\A[a-zA-Zá-é-í-ó-ú ]+\z/,message: "¡Solo caracteres!"}, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
end
