class Auction < ApplicationRecord

	#mount_uploader :attachment, AttachmentUploader # Uploader for this model
	mount_uploader :brochure, BrochureUploader # Uploader for this model
	mount_uploader :vendor_id, VendorIdUploader # Uploader for this model
	mount_uploader :auction_pack, AuctionPackUploader # Uploader for this model
	#Association
	belongs_to :user
	has_one :photo, dependent: :destroy
	accepts_nested_attributes_for :photo
end
