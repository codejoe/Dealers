class Users::PasswordController < Devise::RegistrationsController


  before_filter :configure_permitted_parameters, if: :devise_controller?

  # def self.sendmail
  #   UserMailer.cron_email.deliver
  # end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:password) { |u| u.permit(:email) }
    end
end