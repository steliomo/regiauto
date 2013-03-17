class ApplicationController < ActionController::Base
  protect_from_forgery
  
  layout :select_page

  rescue_from CanCan::AccessDenied do |exception|  
    flash[:error] = "Access denied!"  
    redirect_to root_url  
  end

  protected
  def select_page
    if devise_controller? && signed_in?.blank?  
      'login'
    else
      'application'
    end
  end
  
end
