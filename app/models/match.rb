class Match < ApplicationRecord
  has_and_belongs_to_many :teams
  has_many :contests
  validates :match_no, presence: true
  
  # belongs_to :team
end
