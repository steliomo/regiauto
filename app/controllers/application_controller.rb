class ApplicationController < ActionController::Base
  protect_from_forgery
  
  layout :select_page
  
  protected
  def select_page
    if devise_controller? && action_name == 'new'
      'login'
    else
      'application'
    end
  end
  
end
