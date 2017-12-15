class Reglamento < ApplicationRecord
  has_attached_file :document
  validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
  validates :nombre, length: {minimum: 5, message:"El nombre es muy corto."},presence: { message: "No puede estar en blanco"}
  validates :document, presence: { message: "No puede estar en blanco"}
end
