class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!
	layout :layout

  

	protected
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit(:role_ids, :name,:email, :password, :password_confirmation)
  end
end

  private

  def layout
    devise_controller? ? false : "application"
  end
	def index

		
	end
end
