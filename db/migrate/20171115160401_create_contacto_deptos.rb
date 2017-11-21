class CreateContactoDeptos < ActiveRecord::Migration[5.1]
  def change
    create_table :contacto_deptos do |t|
      t.string :nombre
      t.string :correo
      t.integer :consulta
      t.integer :oferta_laboral

      t.timestamps
    end
  end
end
