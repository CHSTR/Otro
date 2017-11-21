class AddClumnaNuevaToAcademico < ActiveRecord::Migration[5.1]
  def change
    add_column :academicos, :jornada, :string
    add_column :academicos, :imagen, :string
  end
end
