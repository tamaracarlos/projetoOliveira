class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.string :modelo
      t.string :marca
      t.integer :quantidade
      t.string :localizacao

      t.timestamps null: false
    end
  end
end
