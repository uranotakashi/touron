# class ApplicationController < ActionController::Base
#   before_action :configure_permitted_parameters, if: :devise_controller?

#   protected

#   def configure_permitted_parameters
#     devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nickname])
#     devise_parameter_sanitizer.permit(:invite, keys: [:email, :name])
#     devise_parameter_sanitizer.permit(:accept_invitation, keys: [:password, :password_confirmation, :invitation_token, :name])
#   end
# end

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :nickname, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:invite, keys: [:email, :name])
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:password, :password_confirmation, :invitation_token, :name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :nickname, :email, :password, :password_confirmation, :current_password])
  end
end