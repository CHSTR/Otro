class AddAttachmentDocumentToReglamentos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :reglamentos do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :reglamentos, :document
  end
end
