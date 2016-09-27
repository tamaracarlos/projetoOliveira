class AddFieldsToNobreaks < ActiveRecord::Migration
  def change
    add_column :nobreaks, :capacidadeBateria, :integer
  end
end
