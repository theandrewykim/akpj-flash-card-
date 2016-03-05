
post '/decks/cards/:id/rounds' do
  @answered_card = Card.find(params[:id])
  # User.create(username:"Asian Peter", password_hash:"GreekPeter")
  # Round.create(user_id:1, deck_id:1)
  @deck = @answered_card.deck

  if  (@round.nil?) || (@round.started == false)
    @round = Round.find_by(user_id: session[:logged_in], started: false)
    @round.started = true
  end


# binding.pry

  if @answered_card.answer == params[:answer][:answer]
    # @round = Round.find_by(user_id: session[:logged_in])
    @answered_card.guesses << Guess.create(round_id: @round.id, correct?: true)

    @card = @deck.pick_cards_until_over
      erb :'/rounds/show'
  else
     @answered_card.guesses << Guess.create(round_id: 1, correct?: false)
         @card = @deck.pick_cards_until_over
      erb :'/rounds/show'
  end

# binding.pry
end





