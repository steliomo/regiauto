class Phone
  attr_reader  :country_code, :prefix_code, :number
  
  def initialize(country_code, prefix_code, number)
    @country_code, @prefix_code, @number = country_code, prefix_code, number
  end
  
  def ==(value)
    @country_code == value.country_code &&
    @prefix_code == value.prefix_code &&
    @number == value.number 
  end
  
  def to_s
    @number ? "+ #{@country_code} #{@prefix_code} #{@number}" : "NA"
  end
  
end