class Player < ApplicationRecord
	belongs_to :team
	has_one_attached :image1
	# has_many :user_teams
	has_and_belongs_to_many :user_teams
	enum :player_type, batsman: "Batsman", bowler: "Bowler", all_rounder: "All-Rounder", wkeeper: "Wkeeper", fast_bowler: "Fast-Bowler", spin_Bowler: "Spin-Bowler"
	
end
