class CreateAreasDisciplinaria < ActiveRecord::Migration[5.1]
  def change
    create_table :areas_disciplinaria do |t|
      t.string :nombre
      t.string :descripcion
      t.string :descripcion2
      t.string :link

      t.timestamps
    end
  end
end
