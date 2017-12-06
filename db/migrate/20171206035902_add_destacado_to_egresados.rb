class AddDestacadoToEgresados < ActiveRecord::Migration[5.1]
  def change
    add_column :egresados, :destacado, :string
  end
end
