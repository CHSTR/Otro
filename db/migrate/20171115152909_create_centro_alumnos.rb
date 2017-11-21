class CreateCentroAlumnos < ActiveRecord::Migration[5.1]
  def change
    create_table :centro_alumnos do |t|
      t.integer :anio
      t.string :presidente
      t.string :vicepresidente
      t.string :otros
      t.string :pagweb
      t.string :imagen
      t.string :programa

      t.timestamps
    end
  end
end
