class CreateReglamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :reglamentos do |t|
      t.string :nombre
      t.string :link

      t.timestamps
    end
  end
end
