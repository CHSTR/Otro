class CreateMensajeDeptos < ActiveRecord::Migration[5.1]
  def change
    create_table :mensaje_deptos do |t|
      t.string :nombre
      t.string :empresa
      t.string :cargo
      t.string :correo
      t.string :descripcion

      t.timestamps
    end
  end
end
