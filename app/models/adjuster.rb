class Adjuster < ActiveRecord::Base

	has_and_belongs_to_many :sellers
	
end
