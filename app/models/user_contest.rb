class UserContest < ApplicationRecord
	belongs_to :player
	belongs_to :user  
	belongs_to :contest
end
