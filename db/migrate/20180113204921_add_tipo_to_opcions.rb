class AddTipoToOpcions < ActiveRecord::Migration[5.1]
  def change
  	add_column :opcions, :lugar, :string
  end
end
