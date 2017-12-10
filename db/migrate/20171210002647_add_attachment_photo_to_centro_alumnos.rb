class AddAttachmentPhotoToCentroAlumnos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :centro_alumnos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :centro_alumnos, :photo
  end
end
