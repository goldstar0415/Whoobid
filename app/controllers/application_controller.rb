class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
  	before_action :require_valid_user!

	  def current_user
	    if !session[:user_id].blank?
	      @user ||= User.find(session[:user_id])
	    end
	  end

	  def require_valid_user!
	    if current_user.nil?
	      flash[:error] = 'You must be logged in to access that page!'
	      redirect_to login_path
	    end
	  end

	  private

	  	#def role_template
		  #user_role = current_user.has_role? :client ? 'client' : 'operator'
		 # current_user = User.find(session[:user_id])
		#	if current_user.agent?
		#		user_role = "agent"
		#	elsif current_user.client?
		#		user_role = "client"
		#	elsif current_user.admin?
		#		user_role = "admin"
		#	end
		#
		 # "#{user_role}_#{action_name}"
		#end

		def role_template
		 #user_role = current_user.has_role? :client ? 'client' : 'operator'
		 user_role = current_user.role
		 "#{user_role}_#{action_name}"
		end

end
