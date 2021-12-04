class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
  end

private

  def after_sign_out_path_for(resource_or_scope)
        new_user_session_path
  end

end
