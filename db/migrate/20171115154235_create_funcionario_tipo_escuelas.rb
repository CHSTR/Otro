class CreateFuncionarioTipoEscuelas < ActiveRecord::Migration[5.1]
  def change
    create_table :funcionario_tipo_escuelas do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
