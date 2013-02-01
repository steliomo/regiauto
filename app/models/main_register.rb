class MainRegister < ActiveRecord::Base
  
  belongs_to :process_register
  
  STATUS =%w(Open Closed)
  PROVENIENCE =%w(Importado Construido Reconstruido)
  
end
