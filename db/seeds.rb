flashcards=[
{question:"What day is it?",answer:"Today",deck_id:1},
{question:"Why is an orange like a bell?",answer:"Because both need to be peeled",deck_id:1},
{question:"When is the time of a clock like the whistle of a train?",answer:"When its two to two",deck_id:1},
{question:"Why is a quarrel like a bargain?",answer:"It takes two to make one",deck_id:1},
{question:"What kind of pins are used in soup?",answer:"Terapins",deck_id:2},
{question:"What was Joan of Arc made of?",answer:"She was maid of Orleans",deck_id:2},
{question:"How many sides has a circle?",answer:"Two, inside and outside",deck_id:2},
{question:"Which President of the United States wore the biggest hat?",answer:"The one with the biggest head",deck_id:2},
{question:"What has neither nails or bones, but has four fingers and a thumb?",answer:"A glove!",deck_id:3},
{question:"There are three men in a boat with a pack of cigarettes and no matches. How did they manage to smoke?",answer:"They threw one cigarette overboard and the boat became a cigarette lighter.",deck_id:3},
{question:"When is a person like a piece of wood?",answer:"When it's a ruler",deck_id:3},
{question:"Question, what is it that no man wants, but no man wants to lose?",answer:"A law suit!",deck_id:3},
{question:"Roses are?",answer:"Red",deck_id:4},
{question:"Violets are?",answer:"Blue",deck_id:4},
{question:"Sugar is?",answer:"Sweet",deck_id:4},
{question:"And so are?",answer:"You",deck_id:4}
]



decks = [
{name:"Riddler1"},
{name:"Riddler2"},
{name:"Riddler3"},
{name:"Staging"}
]

flashcards.map do |flashcard|
  Flashcard.create(flashcard)
end


decks.map do |deck|
  Deck.create(deck)
end

