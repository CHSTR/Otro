class CreateEgresados < ActiveRecord::Migration[5.1]
  def change
    create_table :egresados do |t|
      t.string :nombre
      t.string :programa
      t.string :contacto_empresa
      t.string :correo

      t.timestamps
    end
  end
end
