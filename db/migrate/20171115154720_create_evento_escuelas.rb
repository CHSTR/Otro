class CreateEventoEscuelas < ActiveRecord::Migration[5.1]
  def change
    create_table :evento_escuelas do |t|
      t.string :nombre
      t.string :lugar
      t.string :descripcion
      t.string :imagen
      t.date :fecha

      t.timestamps
    end
  end
end
