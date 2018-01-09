class Imagene < ApplicationRecord

  validates :nombre, presence: { message: "No puede estar en blanco"}
  has_attached_file :photo1, styles: {large: "800x800>", medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo1, content_type: /\Aimage\/.*\z/
  has_attached_file :photo2, styles: {large: "800x800>", medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo2, content_type: /\Aimage\/.*\z/
  has_attached_file :photo3, styles: {large: "800x800>", medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo3, content_type: /\Aimage\/.*\z/
  has_attached_file :photo4, styles: {large: "800x800>", medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo4, content_type: /\Aimage\/.*\z/
  has_attached_file :photo5, styles: {large: "800x800>", medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo5, content_type: /\Aimage\/.*\z/
  has_attached_file :photo6, styles: {large: "800x800>", medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo6, content_type: /\Aimage\/.*\z/
  has_attached_file :photo7, styles: {large: "800x800>", medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo7, content_type: /\Aimage\/.*\z/
  has_attached_file :photo8, styles: {large: "800x800>", medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo8, content_type: /\Aimage\/.*\z/
end
