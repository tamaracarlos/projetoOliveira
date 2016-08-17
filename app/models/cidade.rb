class Cidade < ActiveRecord::Base
	has_many :clientes
end
