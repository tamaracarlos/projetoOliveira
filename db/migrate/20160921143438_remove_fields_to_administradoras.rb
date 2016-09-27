class RemoveFieldsToAdministradoras < ActiveRecord::Migration
  def change
    remove_reference :administradoras, :cliente, index: true, foreign_key: true
  end
end
