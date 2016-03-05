
post '/decks/cards/:id/rounds' do
  @answered_card = Card.find(params[:id])
  # User.create(username:"Asian Peter", password_hash:"GreekPeter")
  # Round.create(user_id:1, deck_id:1)
  @deck = @answered_card.deck


if @answered_card.answer == params[:answer][:answer]
  @answered_card.guesses << Guess.create(round_id: 1, correct?: true)
   @card = @deck.pick_cards_until_over
    erb :'/rounds/show'
else
   @answered_card.guesses << Guess.create(round_id: 1, correct?: false)
       @card = @deck.pick_cards_until_over
    erb :'/rounds/show'
  end

end





