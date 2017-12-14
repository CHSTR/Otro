class AddAttachmentDocument2ToProgramas < ActiveRecord::Migration[5.1]
  def self.up
    change_table :programas do |t|
      t.attachment :document2
    end
  end

  def self.down
    remove_attachment :programas, :document2
  end
end
