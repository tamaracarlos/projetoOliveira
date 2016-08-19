class CreateHds < ActiveRecord::Migration
  def change
    create_table :hds do |t|
      t.string :capacidade
      t.string :tempo_de_gravacao

      t.timestamps null: false
    end
  end
end
