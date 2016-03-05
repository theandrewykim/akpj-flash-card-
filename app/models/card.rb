class Card < ActiveRecord::Base
  validates :deck, presence: true
  belongs_to :deck
  has_many :guesses

  def correct_yet?
    self.guesses.each do |guess|
      if guess.correct?
          return true
        end
    end
  end


end
