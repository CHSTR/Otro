class CreateFuncionarioEscuelas < ActiveRecord::Migration[5.1]
  def change
    create_table :funcionario_escuelas do |t|
      t.string :nombre
      t.string :cargo
      t.string :correo
      t.string :imagen

      t.timestamps
    end
  end
end
