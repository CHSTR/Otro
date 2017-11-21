class CreateTipoProgramas < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_programas do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
