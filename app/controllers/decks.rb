get '/decks' do

  @decks = Deck.all

  erb :'decks/index'

end

get '/decks/stats' do
  if logged_in?
 @user = User.find(session[:logged_in])
end
erb :'decks/stats'
end


get '/decks/:id' do
  @deck = Deck.find(params[:id])

  erb :'decks/show'
end


