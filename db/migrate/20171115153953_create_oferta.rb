class CreateOferta < ActiveRecord::Migration[5.1]
  def change
    create_table :oferta do |t|
      t.date :fecha
      t.string :cargo
      t.string :empresa
      t.string :descripcion

      t.timestamps
    end
  end
end
