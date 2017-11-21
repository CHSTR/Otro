class CreateTipoTextos < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_textos do |t|
      t.string :unidad
      t.string :tipo

      t.timestamps
    end
  end
end
