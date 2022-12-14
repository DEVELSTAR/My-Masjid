class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :qualifications, :experience, :phone, :city, :village, :imam, :is_admin, :mutawalli, :sub_admin])
  end
end
