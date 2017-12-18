class Oficina < ApplicationRecord
  validates :nombre, presence: { message: "No puede estar en blanco"}
  validates :texto, presence: { message: "No puede estar en blanco"}
end
