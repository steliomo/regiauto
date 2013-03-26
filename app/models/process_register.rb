class ProcessRegister < ActiveRecord::Base
  
  after_update :book_register
  
  has_one :main_register
  has_one :sale_register
  has_one :hypothec
  has_one :proprietary_register
  
  belongs_to :proprietary
  belongs_to :vehicle
  
  validates_presence_of :register_type, :process_status, :proprietary_id, :vehicle_id
  
  accepts_nested_attributes_for :proprietary, :allow_destroy => true
  accepts_nested_attributes_for :vehicle, :allow_destroy => true
  accepts_nested_attributes_for :main_register, :allow_destroy => true
  accepts_nested_attributes_for :sale_register, :allow_destroy => true
  accepts_nested_attributes_for :hypothec, :allow_destroy => true
  accepts_nested_attributes_for :proprietary_register, :allow_destroy => true    
  
  REGISTERTYPE = %w( compra_venda registo_inicial hipoteca registo_propriedade)
  
  def self.status(profile)
    if profile == "Atendedor"
      %w(Aberto)
    elsif profile == "Analista"
       %w(Conforme Inconforme Fechado)
    else
      %w(Aprovado Reprovado)
    end
  end
  
  scope :correct, :conditions => {:process_status => "Conforme"}
  scope :incorrect_closed, where(:process_status => ["Inconforme", "Fechado"], :delivery_status => false)
  scope :opened, :conditions => {:process_status => "Aberto"}
  scope :aproved, :conditions => {:process_status => "Aprovado"}
  scope :opened_aproved_reproved, where(:process_status => ["Aberto", "Aprovado","Reprovado"])
  
  def book_register
    if self.process_status == "Aprovado"
      @book = Book.where("vehicle_id = ?", "#{self.vehicle_id}").first
      if @book.nil?
        Book.create(:proprietary_id => self.proprietary_id, :vehicle_id => self.vehicle_id, :process_register_id => self.id)
      else
        @book.update_attributes(:proprietary_id => self.proprietary_id, :process_register_id => self.id)
      end
    end
  end
  
  private
  def self.search(search)
    if search.nil? 
     scoped
    elsif search.empty?
      scoped
    else
      where('id like ?', "#{search}")
    end
  end
  
end
