class CreateJoinTableAcademicoProyecto < ActiveRecord::Migration[5.1]
  def change
    create_join_table :academicos, :proyectos do |t|
       t.index [:academico_id, :proyecto_id]
       t.index [:proyecto_id, :academico_id]
    end
    add_foreign_key :academicos_proyectos, :academicos
    add_foreign_key :academicos_proyectos, :proyectos
  end
end
