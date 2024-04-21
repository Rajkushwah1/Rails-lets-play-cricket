class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name,  presence: {message: " can not be black please fill your name sir!"}
  validates :age, numericality: { message: "%{value} seems wrong" }
  validates :mobile_no,  length: { is:10 }
  has_many :user_teams
  has_one_attached :image
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
