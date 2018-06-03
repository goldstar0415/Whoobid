class User < ApplicationRecord

  #Associations
  has_many :auctions, dependent: :destroy
  has_one :identity, dependent: :destroy
  #Validation
	before_save { self.email = email.downcase }
  	#validates :name, presence: true, length: { maximum: 50 }
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
	has_secure_password
  	validates :email, uniqueness: true, presence: true
  	#enum role: [:client => 0, :agent => 1, :admin => 2]
  	enum role: [:client, :agent, :admin]
end
