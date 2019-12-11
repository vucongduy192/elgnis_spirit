class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    rescue_from CanCan::AccessDenied do |exception|
        redirect_to main_app.root_url, :alert => exception.message
    end

    def self.default_url_options
        { locale: I18n.locale }
    end

    protected

    def configure_permitted_parameters
        @school = School.all
        attrs = [:name, :age, :email, :password, :password_confirmation, :remember_me, :avatar, :school_id]
        devise_parameter_sanitizer.permit :sign_up, keys: attrs
        devise_parameter_sanitizer.permit :account_update, keys: attrs
    end
end
