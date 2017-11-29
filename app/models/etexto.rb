class Etexto < ApplicationRecord
  validates :descripcion, presence: { message: "No puede estar en blanco"}
end
