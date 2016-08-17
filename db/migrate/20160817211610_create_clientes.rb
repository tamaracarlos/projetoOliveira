class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.integer :conta
      t.references :cidade, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
