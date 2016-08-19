class CreateInternets < ActiveRecord::Migration
  def change
    create_table :internets do |t|
      t.string :banda
      t.string :contrato
      t.integer :cnpj

      t.timestamps null: false
    end
  end
end
