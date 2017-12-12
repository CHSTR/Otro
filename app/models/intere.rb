class Intere < ApplicationRecord
  validates :nombre, presence: { message: "No puede estar en blanco"}
end
