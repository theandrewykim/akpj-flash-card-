require 'pry'

get '/decks/:id/rounds' do

if logged_in?
  @deck = Deck.find_by(id: params[:id])
  @card = @deck.cards.sample
  User.find(session[:logged_in]).rounds << Round.create(deck_id: @deck.id)


  erb :'/rounds/show'
else
  "INSERT REAL ERROR HERE LATER"
end
end

