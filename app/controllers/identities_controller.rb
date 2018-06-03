class IdentitiesController < ApplicationController

	def show
	end

	def new
		@user = User.find(params[:user_id])
		@identity = @user.build_identity
	end

	def create
	end

end
