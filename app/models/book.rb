class Book < ActiveRecord::Base
  
  belongs_to :proprietary
  belongs_to :vehicle
    
  validates_presence_of :vehicle_id, :proprietary_id,:register_number, :register_name
  validates_uniqueness_of :vehicle_id
  
end
