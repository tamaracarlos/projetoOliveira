class CreateDvrs < ActiveRecord::Migration
  def change
    create_table :dvrs do |t|
      t.string :modelo
      t.integer :canais
      t.integer :cameras
      t.integer :entradas
      t.integer :saidas

      t.timestamps null: false
    end
  end
end
