class Phone < ActiveRecord::Base
  
  belongs_to :proprietary
  
  validates_presence_of :country_code, :prefix_code, :number
  validates_length_of :number, :within => 7..20
  validates_numericality_of :country_code, :prefix_code, :number
  
  composed_of :phone, :mapping => [ 
    %w(country_code), 
    %w(prefix_code), 
    %w(number)
  ]

end
