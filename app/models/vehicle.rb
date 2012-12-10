class Vehicle < ActiveRecord::Base

  has_many :process_registers, :dependent => :destroy
  
  validates_presence_of :name, :mark, :model, :frame_number, :engine_number, :cylinders, :cylinders_cc, :petrol,
                        :transmission, :pneumatic_measures, :gross_weight, :tare, :stocking, :color, :service

  validates_uniqueness_of :name
  
  PETROL = %w(Gasolina Diesel Gas)
  TRANS = %w(Automatico Manual)
  
end
