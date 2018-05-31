class UsersController < ApplicationController
skip_before_action :require_valid_user!, except: [:destroy]
before_action :reset_session, except: [:show, :edit, :update]

	def show
    	@user = User.find(params[:id])
    	render role_template
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if@user.save
			session[:user_id] = @user.id
			flash[:success] = "Welcome to Whoobid!"
			redirect_to user_path(@user);
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
		render role_template
	end

	def update
		@user = User.find(params[:id])
	    if @user.update_attributes(user_update_params)
	      flash[:success] = "Company Profile Updated With Success"
	      redirect_to edit_user_path
	    else
	      render 'edit'
	    end
	end

	private

		def user_params
	      params.require(:user).permit(:first_name, :last_name, :title, :dob, :postcode, :telephone, :payment, :email, :password,
	                                   :password_confirmation, :role, :company_name, :office_number)
	    end

	    def user_update_params
	      params.require(:user).permit(:last_name, :address, :telephone, :email, :company_name, :office_number)
	    end
end
