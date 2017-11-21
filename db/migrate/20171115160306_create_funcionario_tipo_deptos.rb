class CreateFuncionarioTipoDeptos < ActiveRecord::Migration[5.1]
  def change
    create_table :funcionario_tipo_deptos do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
