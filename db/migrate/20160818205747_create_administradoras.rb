class CreateAdministradoras < ActiveRecord::Migration
  def change
    create_table :administradoras do |t|
      t.string :nome
      t.integer :telefone

      t.timestamps null: false
    end
  end
end
