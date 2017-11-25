class AgregarColumnaATablaFuncionarioescuela < ActiveRecord::Migration[5.1]
  def change
  	add_column :funcionario_escuelas, :funcion, :integer
  end
end
