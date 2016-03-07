class Round < ActiveRecord::Base
  validates :user, presence: true
  validates :deck, presence: true

  has_many :guesses
  belongs_to :user
  belongs_to :deck

def total_guesses
  Guess.where(round_id:self.id)
end

def first_try_count
  cards = Card.where(deck_id: self.deck_id)
  first_try_count = 0

  cards.each do |card|
    first_try_count +=1 if card.first_attempt?(self)
    end
    first_try_count
  end
end


def correct_this_round?
  self.cards.each do |card|
    card.correct_yet?
  end
end
