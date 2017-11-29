class AgregarColumnaATablaOfertaOtro < ActiveRecord::Migration[5.1]
  def change
  	add_column :oferta_laborals, :oferta_d, :integer
  	add_column :oferta_laborals, :consulta_d, :integer
  end
end
