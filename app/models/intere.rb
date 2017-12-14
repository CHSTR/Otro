class Intere < ApplicationRecord
  has_attached_file :document
  validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
  validates :nombre, presence: { message: "No puede estar en blanco"}

end
