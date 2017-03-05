class User < ApplicationRecord
	has_many :requests
	validates :name, presence: true, length: {maximum: 50}
	validates :email, presence: true, length: {maximum: 255}, uniqueness: true

end
