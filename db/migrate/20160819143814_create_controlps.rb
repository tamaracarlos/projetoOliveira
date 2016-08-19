class CreateControlps < ActiveRecord::Migration
  def change
    create_table :controlps do |t|
      t.time :horarioArmeDesarme
      t.time :horarioInterfone
      t.time :tempoArmeAutomatico

      t.timestamps null: false
    end
  end
end
