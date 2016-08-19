class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.string :modelos
      t.string :marcas
      t.integer :quantidade
      t.string :localizacao

      t.timestamps null: false
    end
  end
end
