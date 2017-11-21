class CreateCasillas < ActiveRecord::Migration[5.1]
  def change
    create_table :casillas do |t|
      t.string :nombre
      t.integer :activo
      t.string :link
      t.integer :ver
      t.string :ubicacion

      t.timestamps
    end
  end
end
