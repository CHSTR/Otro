class AddAttachmentPhotoToFuncionarioEscuelas < ActiveRecord::Migration[5.1]
  def self.up
    change_table :funcionario_escuelas do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :funcionario_escuelas, :photo
  end
end
