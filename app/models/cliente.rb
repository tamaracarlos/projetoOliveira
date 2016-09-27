class Cliente < ActiveRecord::Base
  belongs_to :cidade 
  belongs_to :administradora
  belongs_to :contrato
  belongs_to :dvr
  belongs_to :internet 
end
