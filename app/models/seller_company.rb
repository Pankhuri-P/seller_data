class SellerCompany < ActiveRecord::Base

	has_many :sellers, dependent: :nullify
	
end
