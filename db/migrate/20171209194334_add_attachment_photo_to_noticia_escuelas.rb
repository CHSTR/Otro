class AddAttachmentPhotoToNoticiaEscuelas < ActiveRecord::Migration[5.1]
  def self.up
    change_table :noticia_escuelas do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :noticia_escuelas, :photo
  end
end
