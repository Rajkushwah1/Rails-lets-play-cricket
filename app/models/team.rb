class Team < ApplicationRecord
	has_many :players
	has_and_belongs_to_many :matches
	# has_many :matches
	# belongs_to :match
	
	def to_s
     teamname
    end
end
