class Deck < ActiveRecord::Base
  has_many :cards
  has_many :rounds

  def all_correct?
    self.cards.all?{|card| card.correct_yet? == true}
  end

end
