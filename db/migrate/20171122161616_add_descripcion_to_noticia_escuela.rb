class AddDescripcionToNoticiaEscuela < ActiveRecord::Migration[5.1]
  def change
    add_column :noticia_escuelas, :descripcion, :string
  end
end
