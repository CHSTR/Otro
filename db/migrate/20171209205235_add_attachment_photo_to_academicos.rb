class AddAttachmentPhotoToAcademicos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :academicos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :academicos, :photo
  end
end
