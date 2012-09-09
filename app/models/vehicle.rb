class Vehicle < ActiveRecord::Base
  
  has_many :sale_registers
  has_many :proprietary_registers
  has_one :main_register
  has_many :hypothecs
  has_one :book
  has_one :proprietary, :through => :book 
  
  validates_presence_of :name, :mark, :model, :frame_number, :engine_number, :cylinders, :cylinders_cc, :petrol,
                        :transmission, :pneumatic_measures, :gross_weight, :tare, :stocking, :color, :service
                        
  validates_uniqueness_of :name
  
end
