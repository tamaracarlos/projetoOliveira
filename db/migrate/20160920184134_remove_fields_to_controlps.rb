class RemoveFieldsToControlps < ActiveRecord::Migration
  def change
    remove_column :controlps, :horario_arme_desarme, :time
  end
end
