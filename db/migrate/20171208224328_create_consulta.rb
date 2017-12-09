class CreateConsulta < ActiveRecord::Migration[5.1]
  def change
    create_table :consulta do |t|
      t.string :nombre
      t.string :correo
      t.string :descripcion
      t.integer :leido

      t.timestamps
    end
  end
end
