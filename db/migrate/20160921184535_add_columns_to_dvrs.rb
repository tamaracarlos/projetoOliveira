class AddColumnsToDvrs < ActiveRecord::Migration
  def change
    add_reference :dvrs, :cliente, index: true, foreign_key: true
  end
end
