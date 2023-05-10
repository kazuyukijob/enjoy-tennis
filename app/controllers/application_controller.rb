class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  #サインイン後何処に飛ぶか
  def after_sign_in_path_for(resource)
    home_about_path
  end
  #サインアウト後どこに飛ぶか
  def after_sign_out_path_for(resource)
    home_about_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name, :personal_name])
  end
end
