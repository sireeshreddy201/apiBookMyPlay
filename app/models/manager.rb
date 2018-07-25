class Manager < ApplicationRecord
	has_secure_password
	has_many :grounds
  has_many :users, through: :grounds
end
