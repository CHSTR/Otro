class AgregarColumnaATablaFuncionariodeptos < ActiveRecord::Migration[5.1]
  def change
  	add_column :funcionario_deptos, :funcion, :integer
  end
end
