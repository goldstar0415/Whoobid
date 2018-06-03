class AuctionsController < ApplicationController

	def index
		@auctions = Auction.all
	end

	def show
	end

	def new
		@user = current_user
		@auction = @user.auctions.new
		@auction.build_photo
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
		@user = User.find(params[:user_id])
		@auction = @user.auctions.find(params[:id])
	end

	def update
		@user = User.find(params[:user_id])
		@auction = @user.auctions.find(params[:id])
	    if @auction.update_attributes(auction_update_params)
	      flash[:success] = "Auction Updated With Success"
	      redirect_to user_auctions_path(@user.id)
	    else
	      render 'edit'
	    end
	end

	def destroy
		@user = User.find(params[:user_id])
		@auction = @user.auctions.find(params[:id])
		if !@auction.photo.nil?
			@auction.photo.remove_main_photo
			@auction.photo.remove_second_photo
			@auction.photo.remove_third_photo
			@auction.photo.remove_fourth_photo
			@auction.destroy
			flash[:success] = "Auction Deleted With Success"
	      	redirect_to user_auctions_path(@user.id)
	    else
	    	@auction.destroy
	    	flash[:success] = "Auction Deleted With Success"
	      	redirect_to user_auctions_path(@user.id)
	     end

	end

	private
		def auction_params
			#params.require(:auction).permit(:first_name, :last_name, :title, :dob, :postcode, :telephone, :payment, :email, :password,
	                                   #:password_confirmation, :role, :company_name, :office_number)
	        params.require(:auction).permit(:address, :vendor_name, :contact,
	        	:email, :property_type, :tenure, :auction_date_time,
	        	:auction_method, :reserve_price, :starting_price,
	        	:key_features, :property_description, :brochure, :vendor_id,
	        	:auction_pack,
	        	:photo_attributes => [:id, :main_photo, :second_photo, :third_photo, :fourth_photo, :_delete])
		end

		#def auction_params
		#	params.require(:auction).permit!
		#end

		def auction_update_params
	        params.require(:auction).permit(:address, :vendor_name, :contact,
	        	:email, :property_type, :tenure, :auction_date_time,
	        	:auction_method, :reserve_price, :starting_price,
	        	:key_features, :property_description)
		end
end
