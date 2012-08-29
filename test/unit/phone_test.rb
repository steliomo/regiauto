require 'test_helper'

class PhoneTest < ActiveSupport::TestCase
 
 fixtures :phones
 
  # Replace this with your real tests.
  #test "the truth" do
  #  assert true
  #end
  
  test "should require phone type" do 
    phone = create(:phone_type => nil)
    assert phone.errors[:phone_type].any?, "the :phone_type must be defined"
  end
  
  test "shoud require country code" do
    phone = create(:country_code =>nil)
    assert phone.errors[:country_code].any?, "the :country_code must be defined"
    
    phone = create(:country_code => 2222)
    assert_match /^[\d]+$/,"#{phone.country_code}" , "the :country_code must be digit"
  end
  
  test "should require prefix code" do
    phone = create(:prefix_code => nil)
    assert phone.errors[:prefix_code].any?, "the :prefix_code must be defined"
  end
  
  test "should require number" do
    phone = create(:number => nil)
    assert phone.errors[:number].any?, "the :number must be defined"
  end
  
  test "should require a long number" do
    phone = create(:number => 2)
    assert phone.errors[:number].any?, "the phone number must be more than 2 digits"
  end
  
  test "shoud require a proprietary id" do
    phone = create(:proprietary_id => nil)
    assert phone.errors[:proprietary_id].any?, "the :proprietary_id must be defined"
  end
  
  
  
  private
  
  def create(options = {})
    Phone.create({
      :phone_type => "mobile line",
      :country_code => 258,
      :prefix_code => 82,
      :number => 2546100,
      :proprietary_id => 1
    }.merge(options))
  end
  
end