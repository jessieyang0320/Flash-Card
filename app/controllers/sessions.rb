get '/login' do
  erb :'/users/login'
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end

delete '/sessions' do
  session.clear
  redirect '/'
end

