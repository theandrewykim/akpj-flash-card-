get '/sessions/signup' do
  erb :'/sessions/signup'
end

post '/sessions' do
  #Change these when views are made
  @user= User.new(params[:signup])
  @user.password=(params[:password][:password_hash])

  if @user.save
    @decks = Deck.all
    erb :'/decks/index'
  else
   @errors = @user.errors.messages
     @decks = Deck.all
    erb :'/sessions/signup'
  end

end


get '/sessions/login' do
  erb :'sessions/login'
end

get '/sessions' do
  logged_in = User.find_by(username: params[:login][:username])
    if logged_in && logged_in.password == params[:login][:password_hash]
      session[:logged_in] = logged_in.id
      @decks = Deck.all
      erb :'decks/index'
    else
      @decks = Deck.all
      erb :'decks/index'
    end
  end

  get '/sessions/logout' do
    session.clear
    @decks = Deck.all
    erb :'decks/index'
    #change when real view is ready
  end
