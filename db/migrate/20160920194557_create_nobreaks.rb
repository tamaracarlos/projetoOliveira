class CreateNobreaks < ActiveRecord::Migration
  def change
    create_table :nobreaks do |t|
      t.integer :capacidade

      t.timestamps null: false
    end
  end
end
