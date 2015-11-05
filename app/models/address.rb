class Address < ActiveRecord::Base

	belongs_to :addressable, polymorphic: true, touch: true
	belongs_to :country
	belongs_to :state

	validates :city, length: 2..50
	validates :country, presence: true
	validates :line1, length: 3..60
	validates :line2, length: 2..40, unless: "self.line2.blank?"
	validates :name, length: 2..50, unless: "self.name.blank?"
	#validates :state, length: 2..50, format: { with: /(^[\p{L} \.'\-]+$)/ }, unless: "self.state.blank?"
	validates :zip, length: 2..10, allow_blank: true, zipcode: { country_code_attribute: :country_code } # validate zip-code based on country
	validates :zip, presence: true, :if => :zipcode_condition
	validates :state, presence: true, :if => :state_condition

end
