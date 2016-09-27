class AddColumnsToClientes < ActiveRecord::Migration
  def change
    add_reference :clientes, :dvr, index: true, foreign_key: true
    add_reference :clientes, :internet, index: true, foreign_key: true
    add_reference :clientes, :hd, index: true, foreign_key: true
    add_reference :clientes, :teclado, index: true, foreign_key: true
    add_reference :clientes, :camera, index: true, foreign_key: true
    add_reference :clientes, :nobreak, index: true, foreign_key: true
    add_reference :clientes, :controlp, index: true, foreign_key: true
  end
end
