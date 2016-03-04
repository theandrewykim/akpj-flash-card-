helpers do
  def logged_in?
    !!session[:logged_in]
  end
end


  # def currrent_user?
  # User.find(session[:logged_in]) ==
