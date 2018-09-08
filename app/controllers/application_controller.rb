class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

    def authenticate_admin
      unless current_user.admin?
        flash[:alert] = "Not allow!"
        redirect_to root_path
      end
    end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :role])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :role])
    end

end
