class Seller < ActiveRecord::Base

	belongs_to :country
	belongs_to :seller_company
  	belongs_to :seller_type

	has_and_belongs_to_many :adjusters

	has_many :seller_charges
	has_many :service_orders
  
	has_one :address, as: :addressable, dependent: :destroy
	has_one :contact, as: :contactable, dependent: :destroy


	validates :name, presence: true, length: { within: 2..70 }
	validates :seller_company, presence: true
	#validates :seller_tax_id, presence: true
	validates :seller_type, presence: true

end
