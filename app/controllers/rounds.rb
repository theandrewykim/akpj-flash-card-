require 'pry'

get '/decks/:id/rounds' do

  @deck = Deck.find_by(id: params[:id])
  @card = @deck.cards.sample
  User.find(session[:logged_in]).rounds << Round.create(deck_id: @deck.id)
binding.pry

  erb :'/rounds/show'
end

