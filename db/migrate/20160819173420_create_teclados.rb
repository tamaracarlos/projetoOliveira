class CreateTeclados < ActiveRecord::Migration
  def change
    create_table :teclados do |t|
      t.string :tipo
      t.integer :quantidade

      t.timestamps null: false
    end
  end
end
