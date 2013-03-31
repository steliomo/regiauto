class Proprietary < ActiveRecord::Base
  
  has_many :process_registers, :dependent => :destroy 
  has_many :contacts, :class_name => "Phone",  :foreign_key => "proprietary_id", :dependent => :destroy 
  has_many :books
  has_many :vehicles, :through => :books
  
  validates_presence_of :nuit, :name, :address  
  validates_associated :contacts
  
  accepts_nested_attributes_for :contacts, :allow_destroy => true
  
  private
  def self.search(search)
    if search.nil? 
      scoped
    elsif search.empty?
      scoped
    else
      where('nuit like ?', "#{search}")
    end
  end
end
