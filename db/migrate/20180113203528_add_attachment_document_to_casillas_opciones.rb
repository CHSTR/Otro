class AddAttachmentDocumentToCasillasOpciones < ActiveRecord::Migration[5.1]
  def self.up
    change_table :opciones do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :opciones, :document
  end
end
