class Bet < ActiveRecord::Base
  belongs_to :card
  has_many :credits, through: :user
end
