class CreateImagenes < ActiveRecord::Migration[5.1]
  def change
    create_table :imagenes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
