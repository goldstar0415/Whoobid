class Photo < ApplicationRecord

	mount_uploader :main_photo, MainPhotoUploader # Uploader for this model
	mount_uploader :second_photo, SecondPhotoUploader # Uploader for this model
	mount_uploader :third_photo, ThirdPhotoUploader # Uploader for this model
	mount_uploader :fourth_photo, FourthPhotoUploader # Uploader for this model
	#Association
	belongs_to :auction
end
