class CreateAcademicoProyectos < ActiveRecord::Migration[5.1]
  def change
    create_table :academico_proyectos do |t|
      t.integer :academico_id
      t.integer :proyecto_id

      t.timestamps
    end
  end
end
