class CreateSindicos < ActiveRecord::Migration
  def change
    create_table :sindicos do |t|
      t.string :nome
      t.integer :telefone

      t.timestamps null: false
    end
  end
end
