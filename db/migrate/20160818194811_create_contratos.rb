class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.string :tipo
      t.date :data

      t.timestamps null: false
    end
  end
end
