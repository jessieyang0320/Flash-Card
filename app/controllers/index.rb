get '/' do
  @decks = Deck.all
  erb :index
end

get '/create' do
  "Hello World"
end

post '/create' do
  "Hello World"
end


