class CreateInteres < ActiveRecord::Migration[5.1]
  def change
    create_table :interes do |t|
      t.string :nombre
      t.string :texto
      t.string :tipo

      t.timestamps
    end
  end
end
