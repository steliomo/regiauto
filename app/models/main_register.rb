class MainRegister < ActiveRecord::Base
  
  belongs_to :proprietary, :class_name => "Proprietary", :foreign_key => "Proprietary_id" 
  belongs_to :vehicle, :class_name => "Vehicle", :foreign_key => "Vehicle_id"
  
  validates_presence_of :Vehicle_id, :Proprietary_id
  
  validates_uniqueness_of :Vehicle_id
  
  STATUS =%w(Open Closed)
  PROVENIENCE =%w(Importado Construido Reconstruido)
  
end
