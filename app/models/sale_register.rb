class SaleRegister < ActiveRecord::Base
  
  belongs_to :process_register
  
  belongs_to :seller, :class_name => "Proprietary", :foreign_key => "seller_id"
  
  validates_uniqueness_of :process_register_id
  
  validates_presence_of :buy_date, :value, :seller
  
  attr_accessor :phone
  
end
