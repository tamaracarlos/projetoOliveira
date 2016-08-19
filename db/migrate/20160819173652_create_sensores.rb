class CreateSensores < ActiveRecord::Migration
  def change
    create_table :sensores do |t|
      t.string :modelos
      t.string :marcas
      t.integer :quantidade
      t.string :localizacao

      t.timestamps null: false
    end
  end
end
