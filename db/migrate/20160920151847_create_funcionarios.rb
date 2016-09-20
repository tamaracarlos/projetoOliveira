class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.references :turno, index: true, foreign_key: true
      t.string :email
      t.string :telefone
      t.date :admissao
      t.date :experiencia
      t.integer :situacao

      t.timestamps null: false
    end
  end
end
