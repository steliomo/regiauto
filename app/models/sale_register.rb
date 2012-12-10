class SaleRegister < ActiveRecord::Base
  
  belongs_to :process_register
  
  belongs_to :seller, :class_name => "Proprietary", :foreign_key => "seller_id"
  
  validates_uniqueness_of :process_register_id 
  
end
