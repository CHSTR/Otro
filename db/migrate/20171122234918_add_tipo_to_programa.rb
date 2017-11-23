class AddTipoToPrograma < ActiveRecord::Migration[5.1]
  def change
    add_column :programas, :tipo, :string
  end
end
