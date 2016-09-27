class RemoveFieldsFromInternets < ActiveRecord::Migration
  def change
    remove_reference :internets, :clientes, index: true, foreign_key: true
  end
end
