class CreateMensajeEscuelas < ActiveRecord::Migration[5.1]
  def change
    create_table :mensaje_escuelas do |t|
      t.string :nombre
      t.string :empresa
      t.string :cargo
      t.string :correo
      t.string :descripcion

      t.timestamps
    end
  end
end
