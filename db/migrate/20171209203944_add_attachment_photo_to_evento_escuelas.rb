class AddAttachmentPhotoToEventoEscuelas < ActiveRecord::Migration[5.1]
  def self.up
    change_table :evento_escuelas do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :evento_escuelas, :photo
  end
end
