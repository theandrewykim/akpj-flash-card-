
post '/rounds/:round_id/guess' do
  @answered_card = Card.find(params[:card_id])
  @round = Round.find(params[:round_id])
  @deck= @answered_card.deck

  # # User.create(username:"Asian Peter", password_hash:"GreekPeter")
  # # Round.create(user_id:1, deck_id:1)
  # @deck = @answered_card.deck



  # if  (@round.nil?) || (@round.started == false)
  #   # binding.pry
  #   @round = Round.find_by(user_id: session[:logged_in], started: false)
  #   @round.update_attribute(:started, true)
  # end


# binding.pry

  if @answered_card.answer == params[:answer][:answer]
    # @round = Round.find_by(user_id: session[:logged_in])
    @answered_card.guesses << Guess.create(round_id: @round.id, correct?: true)

    @card = @deck.pick_cards_until_over
      erb :'/rounds/show'
  else
     @answered_card.guesses << Guess.create(round_id: @round.id, correct?: false)
         @card = @deck.pick_cards_until_over
      erb :'/rounds/show'
  end

# binding.pry
end





