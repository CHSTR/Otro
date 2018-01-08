class AddAttachmentPhoto1Photo2Photo3Photo4ToImagenes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :imagenes do |t|
      t.attachment :photo1
      t.attachment :photo2
      t.attachment :photo3
      t.attachment :photo4
    end
  end

  def self.down
    remove_attachment :imagenes, :photo1
    remove_attachment :imagenes, :photo2
    remove_attachment :imagenes, :photo3
    remove_attachment :imagenes, :photo4
  end
end
