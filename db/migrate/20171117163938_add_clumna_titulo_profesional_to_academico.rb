class AddClumnaTituloProfesionalToAcademico < ActiveRecord::Migration[5.1]
  def change
    add_column :academicos, :titulo_profesional, :string
  end
end
