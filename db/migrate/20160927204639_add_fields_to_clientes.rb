class AddFieldsToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :cnpj, :integer
  end
end
