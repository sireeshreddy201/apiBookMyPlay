class User < ApplicationRecord
	validates :email,:user_name,:mobile_number,uniqueness:true
	validates :password,confirmation:true
	has_secure_password
	has_many :grounds
	has_many :managers,through: :grounds
	enum role: [:guest,:registered_user,:admin]
end
