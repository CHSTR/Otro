class AddAttachmentDocumentToAcademicos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :academicos do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :academicos, :document
  end
end
