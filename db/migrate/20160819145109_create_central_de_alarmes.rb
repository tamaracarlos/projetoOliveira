class CreateCentralDeAlarmes < ActiveRecord::Migration
  def change
    create_table :central_de_alarmes do |t|
      t.string :modelo

      t.timestamps null: false
    end
  end
end
