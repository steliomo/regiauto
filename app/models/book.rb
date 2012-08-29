class Book < ActiveRecord::Base
  
  belongs_to :proprietary
  belongs_to :vehicle
  belongs_to :main_register, :class_name => "MainRegister", :foreign_key => "register_number"
  belongs_to :sale_register, :class_name => "SaleRegister", :foreign_key => "register_number"
  
  validates_presence_of :vehicle_id, :proprietary_id,:register_number, :register_name
  validates_uniqueness_of :vehicle_id
  
end
