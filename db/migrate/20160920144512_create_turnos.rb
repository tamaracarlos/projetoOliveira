class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.time :hora

      t.timestamps null: false
    end
  end
end
