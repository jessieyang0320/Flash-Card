get '/' do
  @decks = Deck.all
  erb :index
end

get '/login' do
p "hello"
  end

post '/login' do
@user = User.find_by(:username, params[:username])
User.authenticate(param[:password])
end

get '/create' do
  "Hello World"
end

post '/create' do
  "Hello World"
end


get '/register' do
  "Hello World"
end

post '/register' do
  "Hello World"
end
