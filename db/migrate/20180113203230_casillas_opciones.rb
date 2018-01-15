class CasillasOpciones < ActiveRecord::Migration[5.1]
  def change
  	create_table :opciones do |t|
      t.integer :opcion
      t.string	:titulo
      t.string	:texto

      t.timestamps
    end
  end
end
