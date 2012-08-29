class SaleRegister < ActiveRecord::Base
  
  belongs_to :vehicle
  belongs_to :customer, :class_name => "Proprietary", :foreign_key => "customer_id"
  belongs_to :seller, :class_name => "Proprietary", :foreign_key => "seller_id"
  
end
