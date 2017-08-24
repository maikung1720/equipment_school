require 'date'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    rescue_from CanCan::AccessDenied do |exception|
      redirect_to root_url, :alert => exception.message
    end
     Time.zone = 'Bangkok' 
 protected
   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :role, :name) }
     devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :role, :name) }
   end
end
