class Card < ActiveRecord::Base
  validates :deck, presence: true
  belongs_to :deck
  has_many :guesses

  def correct_yet?(round)
   guesses = Guess.where(round_id: round.id,  card_id: self.id)
    if guesses.empty?
      false
    else
      guesses.any? {|guess| guess.correct? == true}
    end
  end

  def first_attempt?(round)
    guesses = Guess.where(round_id: round.id,  card_id: self.id)
    if guesses.count == 1 && self.correct_yet?(round)
      return true
    end
  end

end
