class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
