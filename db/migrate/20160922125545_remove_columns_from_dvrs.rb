class RemoveColumnsFromDvrs < ActiveRecord::Migration
  def change
    remove_reference :dvrs, :cliente, index: true, foreign_key: true
  end
end
