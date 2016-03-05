require 'pry'

get '/decks/:id/rounds' do
  "hello world"

  @deck = Deck.find_by(id: params[:id])
  @card = @deck.cards.sample

  erb :'/rounds/show'
end

