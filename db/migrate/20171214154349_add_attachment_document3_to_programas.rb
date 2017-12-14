class AddAttachmentDocument3ToProgramas < ActiveRecord::Migration[5.1]
  def self.up
    change_table :programas do |t|
      t.attachment :document3
    end
  end

  def self.down
    remove_attachment :programas, :document3
  end
end
