class AddDescripcion2ToEtexto < ActiveRecord::Migration[5.1]
  def change
    add_column :etextos, :descripcion2, :string
  end
end
