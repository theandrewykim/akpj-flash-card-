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


end
