class AddAttachmentPhoto5Photo6Photo7Photo8ToImagenes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :imagenes do |t|
      t.attachment :photo5
      t.attachment :photo6
      t.attachment :photo7
      t.attachment :photo8
    end
  end

  def self.down
    remove_attachment :imagenes, :photo5
    remove_attachment :imagenes, :photo6
    remove_attachment :imagenes, :photo7
    remove_attachment :imagenes, :photo8
  end
end
