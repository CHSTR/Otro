class Texto < ApplicationRecord
  #belongs_to :tipo_texto
  validates :descripcion, presence: { message: "No puede estar en blanco"}

end
