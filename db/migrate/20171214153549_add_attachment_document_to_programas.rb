class AddAttachmentDocumentToProgramas < ActiveRecord::Migration[5.1]
  def self.up
    change_table :programas do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :programas, :document
  end
end
