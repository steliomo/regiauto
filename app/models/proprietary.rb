class Proprietary < ActiveRecord::Base
  
  has_many :books 
  has_many :main_registers
  has_many :sale_registers, :foreign_key => "customer_id" 
  has_many :proprietary_registers
  has_many :vehicles, :through => :books
  has_many :contacts, :class_name => "Phone",  :foreign_key => "proprietary_id"
  
  validates_presence_of :nuit, :name, :address
    
end
