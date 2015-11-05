class SellerType < ActiveRecord::Base

	has_many :sellers, dependent: :nullify

	validates :code, presence: true, length: { within: 1..50 }
	validates :description, presence: true, length: { within: 2..100 }

end
