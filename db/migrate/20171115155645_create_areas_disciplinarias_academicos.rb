class CreateAreasDisciplinariasAcademicos < ActiveRecord::Migration[5.1]
  def change
    create_table :areas_disciplinarias_academicos do |t|
      t.string :cargo

      t.timestamps
    end
  end
end
