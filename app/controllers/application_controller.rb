class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def authenticate_doctor!
    if doctor_signed_in?
      super
    else
      redirect_to new_doctor_session_path
    end
  end

  def after_sign_in_path_for(resource)
    patients_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
      keys: [:email, :first_name, :last_name, :identity_number,
             :upin, :phone_number, :speciality, :password])
  end
end
