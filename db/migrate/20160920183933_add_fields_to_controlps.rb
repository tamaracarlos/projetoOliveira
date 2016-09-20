class AddFieldsToControlps < ActiveRecord::Migration
  def change
    add_column :controlps, :desarme, :time
    add_column :controlps, :arme, :time
  end
end
