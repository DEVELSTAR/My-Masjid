class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_current_user
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :qualifications, :experience, :phone, :city, :village, :imam, :is_admin, :mutawalli, :sub_admin])
  end


  private

  def set_current_user
    Current.user = current_user
  end
end
