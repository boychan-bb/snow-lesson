class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :divise_controller? #devise用のコントローラの場合にtrueとなる
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
