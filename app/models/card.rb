class Card < ActiveRecord::Base
  belongs_to :user
  has_many :games
  has_many :teams, through: :game
  has_one :bet 
end
