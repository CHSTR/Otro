class Reglamento < ApplicationRecord
  validates :nombre, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :link, presence: { message: "No puede estar en blanco"}
end
