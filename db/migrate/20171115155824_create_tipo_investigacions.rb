class CreateTipoInvestigacions < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_investigacions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
