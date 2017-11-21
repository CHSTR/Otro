class AddClumnaApellidoToAcademico < ActiveRecord::Migration[5.1]
  def change
    add_column :academicos, :apellido, :string
  end
end
