class AddAttachmentDocumentToOpcions < ActiveRecord::Migration[5.1]
  def self.up
    change_table :opcions do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :opcions, :document
  end
end
