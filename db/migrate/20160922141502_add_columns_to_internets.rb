class AddColumnsToInternets < ActiveRecord::Migration
  def change
    add_column :internets, :nome, :string
  end
end
