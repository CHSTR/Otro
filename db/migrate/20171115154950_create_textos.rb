class CreateTextos < ActiveRecord::Migration[5.1]
  def change
    create_table :textos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :imagen
      t.string :descripcion_imagen

      t.timestamps
    end
  end
end
