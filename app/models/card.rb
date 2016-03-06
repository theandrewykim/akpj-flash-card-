class Card < ActiveRecord::Base
  validates :deck, presence: true
  belongs_to :deck
  has_many :guesses

  def correct_yet?
    if self.guesses.empty?
      false
    else
    self.guesses.any? {|guess| guess.correct? == true}
       end
  end

  def first_attempt?
    if self.guesses.count == 1 && self.correct_yet?
      return true
      end
  end


end
