class CreateEgresadoDestacados < ActiveRecord::Migration[5.1]
  def change
    create_table :egresado_destacados do |t|
      t.string :nombre
      t.string :programa
      t.string :contacto_empresa
      t.string :correo
      t.string :imagen
      t.string :opinion

      t.timestamps
    end
  end
end
