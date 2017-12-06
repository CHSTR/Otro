class AddAnioToEgresados < ActiveRecord::Migration[5.1]
  def change
    add_column :egresados, :anio, :integer
  end
end
