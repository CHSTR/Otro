class AgregarColumnaATablaOferta < ActiveRecord::Migration[5.1]
  def change
  	add_column :oferta_laboral, :oferta, :integer
  	add_column :oferta_laboral, :consulta, :integer
  end
end
