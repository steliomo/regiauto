require "spec_helper"

describe ProcessRegister do
  
  before do 
    FactoryGirl.create(:process_register, :proprietary_id => 1, :vehicle_id => 1,:register_type => "registo_inicial")
  end
  
  context "validations" do
    it "require register type to be set" do
      process = ProcessRegister.create
      expect(process).to have(1).error_on(:register_type)
    end
  end
  
  it "should verify the search method" do
    expect(ProcessRegister.search "").to have(1).items
    expect(ProcessRegister.first.id).to eql(1) 
    expect(ProcessRegister.first.register_type).to eql("registo_inicial") 
  end
end