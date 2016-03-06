class Deck < ActiveRecord::Base
  has_many :cards
  has_many :rounds

  def all_correct?(round)
    Card.where(deck_id: round.deck_id).all?{|card| card.correct_yet?(round) == true}
  end

  def pick_card(card, round)
    if card.correct_yet?(round)
      pick_card(card.deck.cards.sample, round)
   else
      card
    end
  end

def pick_cards_until_over(round)
    if  self.all_correct?(round)
      return nil
    else
    random_card = self.cards.sample
    self.pick_card(random_card, round)
  end
end


end
