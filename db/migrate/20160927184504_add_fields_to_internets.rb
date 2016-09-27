class AddFieldsToInternets < ActiveRecord::Migration
  def change
    add_reference :internets, :cliente, index: true, foreign_key: true
  end
end
