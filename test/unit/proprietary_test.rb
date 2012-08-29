require 'test_helper'

class ProprietaryTest < ActiveSupport::TestCase
  
  fixtures :proprietaries, :phones
  
  # Replace this with your real tests.
  #test "the truth" do
  #  assert true
  #end
  
  test "should require nuit" do
    proprietary = create(:nuit => nil)
    assert proprietary.errors[:nuit].any?, "The :nuit must be defined"
  end
  
  test "shoul require name" do
    proprietary = create(:name => nil)
    assert proprietary.errors[:name].any?, "The :name must be defined"
  end
  
  test "should require address" do
    proprietary = create(:address => nil)
    assert proprietary.errors[:address].any?, "The :address must be defined"
  end
  
  private
    
  def create(options = {})
    Proprietary.create({
      :nuit => 123456789,
      :name => "Stélio Klésio Adriano Moiane",
      :birth_day => '1984-08-28',
      :occupation => "IT- System Admin and Programmer",
      :address => "Bairro do Magoanine A, casa 49, quarteirão 38"     
    }.merge(options))
  end
  
end
