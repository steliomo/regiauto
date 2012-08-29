class ProprietaryRegister < ActiveRecord::Base
  belongs_to :proprietary
  belongs_to :vehicle
end
