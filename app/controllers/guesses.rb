
post '/decks/cards/:id/rounds' do
  @answered_card = Card.find(params[:id])
  User.create(username:"Asian Peter", password_hash:"GreekPeter")
  Round.create(user_id:1, deck_id:1)

  if @answered_card.answer == params[:answer][:answer]
    @answered_card.guesses << Guess.create(round_id: 1, correct?: true)
    #Put this in the model later
    @card = @answered_card.deck.cards.sample

    # unless @card.deck.cards.sample
    if @card.guesses.empty? || @card.correct_yet?
      @card = @card.deck.cards.sample
    end
  #end

  else
     @card.guesses << Guess.create(round_id: 1, correct?: false)
     @card = @answered_card.deck.cards.sample
        if @card.guesses.empty? || @card.correct_yet?
      @card = @card.deck.cards.sample
    end

  end













  # @card.guesses << Guess.new(round_id: 1)
  erb :'/rounds/show'
end
