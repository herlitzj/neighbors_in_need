class Request < ApplicationRecord
	belongs_to :user
	validates :title, presence: true, length: {maximum: 50}
	validates :description, presence: true
	validates :amount, presence: true
	validates :location, presence: true
end
