class Request < ApplicationRecord
	belongs_to :user
	validates :title, presence: true, length: {maximum: 50}
	validates :description, presence: true
	validates :amount, presence: true
	validates :location, presence: true

	def amount=(value)
	  value = value.to_s.tr('$,', '').to_f
	  write_attribute(:amount, value)
	end
end
