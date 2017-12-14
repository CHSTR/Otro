class AddAttachmentDocumentToInteres < ActiveRecord::Migration[5.1]
  def self.up
    change_table :interes do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :interes, :document
  end
end
