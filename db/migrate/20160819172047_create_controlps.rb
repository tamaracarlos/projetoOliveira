class CreateControlps < ActiveRecord::Migration
  def change
    create_table :controlps do |t|
      t.time :horario_arme_desarme
      t.time :horario_interfone
      t.time :tempo_arme_automatico

      t.timestamps null: false
    end
  end
end
