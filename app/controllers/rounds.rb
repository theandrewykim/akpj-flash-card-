require 'pry'

get '/decks/:id/rounds/:round_id' do

if logged_in?
  @deck = Deck.find_by(id: params[:id])
  # @card = @deck.pick_cards_until_over
  @round = Round.find(params[:round_id])
  if @round.started
    @card = @deck.pick_cards_until_over
  else
    @card = @deck.cards.sample
  end


  erb :'/rounds/show'
else
  "INSERT REAL ERROR HERE LATER"
end
end


post '/decks/:id/rounds' do
  @deck = Deck.find_by(id: params[:id])
new_round = Round.create(deck_id: @deck.id)
  User.find(session[:logged_in]).rounds << new_round

  redirect "/decks/#{@deck.id}/rounds/#{new_round.id}"
end

