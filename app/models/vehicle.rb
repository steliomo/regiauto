# encoding: UTF-8 

class Vehicle < ActiveRecord::Base
  
  has_many :process_registers, :dependent => :destroy
  has_many :books
  has_one :proprietary, :through => :books

  validates_presence_of :name, :vehicle_type, :mark, :model, :frame_number, :engine_number, :cylinders, :cylinders_cc, :petrol,
                        :transmission, :pneumatic_measures, :gross_weight, :tare, :stocking, :color, :service

  validates_uniqueness_of :name
  
  TYPE = %w(Automóvel Motorizado)
  PETROL = %w(Gasolina Diesel Gas)
  TRANS = %w(Automático Manual)

  private
  def self.search(search)
    if search.nil? 
     scoped
    elsif search.empty?
      scoped
    else
      where('name like ?', "#{search}")
    end
  end
  
end
