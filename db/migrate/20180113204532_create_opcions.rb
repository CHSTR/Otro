class CreateOpcions < ActiveRecord::Migration[5.1]
  def change
    create_table :opcions do |t|
      t.integer :opcion
      t.string :titulo
      t.string :texto

      t.timestamps
    end
  end
end
