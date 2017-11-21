class CreateAdminDeptos < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_deptos do |t|
      t.string :nombre
      t.string :apellido
      t.string :cargo
      t.string :correo
      t.string :descripcion

      t.timestamps
    end
  end
end
