class CreateProyectoAcademicos < ActiveRecord::Migration[5.1]
  def change
    create_table :proyecto_academicos do |t|
      t.string :cargo

      t.timestamps
    end
  end
end
