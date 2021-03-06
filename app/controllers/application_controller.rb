class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def only_for_admin!
  	if current_user.nil? or not current_user.role? :admin
  		flash[:alert] = 'Access denied'
  		redirect_to root_path
  	end
  end
end
