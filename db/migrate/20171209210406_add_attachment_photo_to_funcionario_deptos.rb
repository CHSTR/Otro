class AddAttachmentPhotoToFuncionarioDeptos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :funcionario_deptos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :funcionario_deptos, :photo
  end
end
