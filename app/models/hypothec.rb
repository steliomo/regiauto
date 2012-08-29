class Hypothec < ActiveRecord::Base
  belongs_to :proprietary
  belongs_to :vehicle
end
