class CreateNoticiaEscuelas < ActiveRecord::Migration[5.1]
  def change
    create_table :noticia_escuelas do |t|
      t.string :nombre
      t.string :cuerpo
      t.string :imagen
      t.date :fecha

      t.timestamps
    end
  end
end
