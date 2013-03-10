class ApplicationController < ActionController::Base
  protect_from_forgery
  
  layout :select_page

  protected
  def select_page
    if signed_in?.blank?  
      'login'
    else
      'application'
    end
  end
  
end
