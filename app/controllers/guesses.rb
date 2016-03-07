
post '/rounds/:round_id/guess' do
  @answered_card = Card.find(params[:card_id])
  @round = Round.find(params[:round_id])
  deck= @answered_card.deck

  if @answered_card.answer.downcase == params[:answer][:answer].downcase
    @answered_card.guesses << Guess.create(round_id: @round.id, correct?: true)
    @round.update_attribute(:started, true)
    redirect "/decks/#{deck.id}/rounds/#{@round.id}"
  else
     @answered_card.guesses << Guess.create(round_id: @round.id, correct?: false)
     @round.update_attribute(:started, true)
     redirect "/decks/#{deck.id}/rounds/#{@round.id}"
  end

end





