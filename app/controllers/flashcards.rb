
get '/create/flashcards' do
  erb :'/flashcards/create'
end

post '/create/flashcards' do
  @question = params[:question]
  @answer = params[:answer]
  @deck_id = params[:deck_id]
  newflashcard = Flashcard.new(question: @question, answer: @answer, deck_id: @deck_id)
  newflashcard.save
end
