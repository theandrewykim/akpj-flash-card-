get '/sessions/signup' do
  erb :'/sessions/signup'
end

post '/sessions/usersv' do
  #Change these when views are made
  @user= User.new(params[:signup])
  @user.password=(params[:password][:password])
  @user.save
  @entries = Entry.all
  erb :'/entries/index'
end


get '/sessions/login' do
  erb :'sessions/login'
end

get '/sessions' do
  logged_in = User.find_by(user_name: params[:login][:user_name])
    if logged_in && logged_in.password == params[:login][:password_digest]
      session[:logged_in] = logged_in.id
      @entries = Entry.all
      erb :'entries/index'
      #Add real error
    else
      "Something went wrong with your log in man"
    end
  end

  get '/sessions/logout' do
    session.clear
    @entries = Entry.all
    erb :'entries/index'
    #change when real view is ready
  end
