get '/' do
  @decks = Deck.all
  erb :index
end


get '/create' do
erb :create
end

post '/create' do
@new_desk = params[:title]
d = Deck.new(name: params[:title])
d.save
redirect '/'
end


get '/show/:id/deck' do
  @decks = Deck.all
  @flashards = Flashcard.all
  p @decks

erb :'show/deck'
end
