class Card < ActiveRecord::Base
  validates :deck, presence: true
  belongs_to :deck
  has_many :guesses
end
