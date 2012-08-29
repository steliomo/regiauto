require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  
  fixtures :vehicles
  
  # Replace this with your real tests.
  #test "the truth" do
  #  assert true
  #end
  
  test "should require nr plate" do
    vehicle = create(:nr_plate => nil)
    assert vehicle.errors[:nr_plate].any?, "the :nr_plate must be defined" 
  end
  
  test "should require mark" do
    vehicle = create(:mark => nil)
    assert vehicle.errors[:mark].any?, "the :mark must be defined"
  end
  
  private
  def create(options = {})
    Vehicle.create({
      :nr_plate => "MMS-07-79",
      :mark => "Nissan",
      :model => "March",
      :frame_number => "K11-54232",
      :engine_number => "CG10-1011-36B",
      :cylinders => 4,
      :cylinders_cc => 998,
      :petrol => "Gasoline",
      :transmission => "Manual",
      :pneumatic_measures => "165/70R13",
      :gross_weight => 2500,
      :tare => 1120,
      :stocking => 5,
      :color => "Red",
      :service => "Particular"              
    }.merge(options))
    
  end
end
