class ApplicationController < ActionController::Base
  protect_from_forgery

	helper_method :current_user

	private

	def current_user
  	@current_user ||= Admin.find(session[:admin_id]) if session[:admin_id]
	end

	def authorize!
		redirect_to root_path unless current_user
	end
end
