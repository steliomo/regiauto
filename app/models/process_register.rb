class ProcessRegister < ActiveRecord::Base
  
  has_one :sale_register
  
  belongs_to :proprietary
  belongs_to :vehicle
  
  validates_presence_of :register_type, :process_status, :proprietary, :vehicle
  
  accepts_nested_attributes_for :proprietary, :allow_destroy => true
  accepts_nested_attributes_for :vehicle, :allow_destroy => true
  accepts_nested_attributes_for :sale_register, :allow_destroy => true
  
  REGISTERTYPE = %w( CompraVenda RegistoInicial Hipoteca RegistoPropriedade)
  
  STATUS = %w(Aberto Triado Fechado Aprovado)
  
  named_scope :open, :conditions => {:process_status => "Aberto"}
  named_scope :closed, :conditions => {:process_status => "Fechado"}
  
end
