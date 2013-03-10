class HomeController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @process_registers = ProcessRegister.all
    @good_process = ProcessRegister.good
    @aproved_process = ProcessRegister.aproved
  end
  
end
