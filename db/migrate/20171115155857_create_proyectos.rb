class CreateProyectos < ActiveRecord::Migration[5.1]
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
