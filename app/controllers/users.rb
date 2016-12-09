get '/user/new' do
  erb :'/users/new'
end

post '/user' do
  @user = User.new(username: params[:username], password: params[:password])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    redirect '/user/new'
  end
end
