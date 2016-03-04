class Round < ActiveRecord::Base
  validates :user, presence: true
  validates :deck, presence: true

  has_many :guesses
  belongs_to :user
  belongs_to :deck
end
