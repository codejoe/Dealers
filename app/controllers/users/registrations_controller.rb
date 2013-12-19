class Users::RegistrationsController < Devise::RegistrationsController


  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :phone, :address, :email, :password, :confirm_password, :avatar, :avatar_cache) }
    end
end