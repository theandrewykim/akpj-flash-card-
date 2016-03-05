class Guess < ActiveRecord::Base
  validates :card, presence: true
  validates :round, presence: true

  belongs_to :round
  belongs_to :card
end
