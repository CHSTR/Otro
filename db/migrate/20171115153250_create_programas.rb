class CreateProgramas < ActiveRecord::Migration[5.1]
  def change
    create_table :programas do |t|
      t.string :nombre
      t.string :perfil_egreso
      t.string :campo_ocupacional
      t.string :link
      t.string :descripcion
      t.string :link_malla

      t.timestamps
    end
  end
end
