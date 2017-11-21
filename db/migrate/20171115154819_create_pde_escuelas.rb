class CreatePdeEscuelas < ActiveRecord::Migration[5.1]
  def change
    create_table :pde_escuelas do |t|
      t.string :nombre
      t.string :descripcion
      t.string :imagen
      t.string :imagen2

      t.timestamps
    end
  end
end
