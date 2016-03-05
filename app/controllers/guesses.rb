
post '/decks/cards/:id/rounds' do
  @answered_card = Card.find(params[:id])
  User.create(username:"Asian Peter", password_hash:"GreekPeter")
  Round.create(user_id:1, deck_id:1)

def pick_card(card)
    if card.correct_yet?
      pick_card(card.deck.cards.sample)
   else
     @card = card
  end
end


if @answered_card.answer == params[:answer][:answer]
  @answered_card.guesses << Guess.create(round_id: 1, correct?: true)
  if  !@answered_card.deck.all_correct?
    random_card = @answered_card.deck.cards.sample
    pick_card(random_card)

    erb :'/rounds/show'
  end
  else
   @answered_card.guesses << Guess.create(round_id: 1, correct?: false)
    if  !@answered_card.deck.all_correct?
      random_card = @answered_card.deck.cards.sample
    pick_card(random_card)
    erb :'/rounds/show'
    end
  end

end





