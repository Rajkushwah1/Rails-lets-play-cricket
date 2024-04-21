class UserTeam < ApplicationRecord
    
    has_and_belongs_to_many :players
	belongs_to :user
	belongs_to :contest
	
end
