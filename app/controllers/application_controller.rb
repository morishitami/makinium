class ApplicationController < ActionController::Base
  before_action :basic_auth

  def configure_permitted_parameters
    sign_up_params = [:code, :password, :password_confirmation]
    sign_in_params = [:code, :password,]

    devise_parameter_sanitizer.permit(:sign_up, keys: sign_up_params)
    devise_parameter_sanitizer.permit(:sign_in, keys: sign_in_params)
    devise_parameter_sanitizer.permit(:account_update, keys: account_update)
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
