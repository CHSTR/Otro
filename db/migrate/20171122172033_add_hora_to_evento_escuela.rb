class AddHoraToEventoEscuela < ActiveRecord::Migration[5.1]
  def change
    add_column :evento_escuelas, :hora, :string
  end
end
