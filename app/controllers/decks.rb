
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

  @round = Round.new(user_id: session[:user_id], deck_id: params[:id].to_i)
    @round.save
      @decks = Deck.all
      @get_cards = Flashcard.all
      @counter = 0

    erb :'decks/show'
end


post '/decks/check' do
  @correct_answers = 0
  @all_guesses = 0
  @decks = Deck.all
  @round = Round.last.id
  @get_cards = Flashcard.all
  @counter = params[:counter].to_i
  if params[:answer] == @get_cards[@counter].answer.downcase
  @guess = Guess.new(correct?: true,flashcard_id: @get_cards[@counter], round_id: @round)
  @correct_answers +=1
  else
  @guess = Guess.new(correct?: false ,flashcard_id: @get_cards[@counter], round_id: @round)
  end


  @guess.save
  @counter += 1
   @all_guesses += 1

  erb :'decks/show'
end

