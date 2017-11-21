class CreateInvestigacions < ActiveRecord::Migration[5.1]
  def change
    create_table :investigacions do |t|
      t.string :nombre
      t.string :descripcion
      t.string :imagen
      t.string :link

      t.timestamps
    end
  end
end
