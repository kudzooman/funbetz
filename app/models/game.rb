class Game < ActiveRecord::Base
  belongs_to :card
  has_many :teams
end
