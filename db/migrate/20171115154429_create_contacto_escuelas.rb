class CreateContactoEscuelas < ActiveRecord::Migration[5.1]
  def change
    create_table :contacto_escuelas do |t|
      t.string :nombre
      t.string :correo
      t.integer :consulta
      t.integer :oferta

      t.timestamps
    end
  end
end
