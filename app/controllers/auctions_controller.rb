class AuctionsController < ApplicationController

	def index
	end

	def show
	end

	def new
		@user = current_user
		@auction = @user.auctions.new
	end

	def create
		@user = current_user
		@auction = @user.auctions.new(auction_params)
		if @auction.save
			flash[:success] = "Auction created!"
			redirect_to user_path(current_user.id);
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		def auction_params
			#params.require(:auction).permit(:first_name, :last_name, :title, :dob, :postcode, :telephone, :payment, :email, :password,
	                                   #:password_confirmation, :role, :company_name, :office_number)
	        params.require(:auction).permit!
		end
end
