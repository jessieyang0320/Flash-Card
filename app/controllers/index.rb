get '/' do
  @decks = Deck.all
  erb :index
end


get '/create' do
  erb :'/decks/create'
end

post '/create' do
@new_desk = params[:title]
d = Deck.new(name: params[:title])
d.save
redirect '/'
end


get '/decks/:id' do
  @decks = Deck.all
  @get_cards = Flashcard.all

erb :'decks/show'
end
