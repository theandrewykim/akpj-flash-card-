class Guess < ActiveRecord::Base
  validates :card, true
  validates :round, true

  belongs_to :round
  belongs_to :card
end
