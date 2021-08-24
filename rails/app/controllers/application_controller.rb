class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  skip_before_action :verify_authenticity_token

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombres,:apellidos,:celular,:email,:password,:password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:celular,:nombres,:apellidos])
  end

  end
