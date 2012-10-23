class Book < ActiveRecord::Base
  
  belongs_to :proprietary
  belongs_to :vehicle
    
  validates_presence_of :vehicle_id, :proprietary_id
  validates_uniqueness_of :vehicle_id
  
end
