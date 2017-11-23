class CreateOfertaLaborals < ActiveRecord::Migration[5.1]
  def change
    create_table :oferta_laborals do |t|
      t.string :nombre
      t.string :empresa
      t.string :cargo
      t.string :correo
      t.string :descripcion
      t.integer :aceptado

      t.timestamps
    end
  end
end
