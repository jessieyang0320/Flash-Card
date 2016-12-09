require pry
class Round < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :deck
  has_many :guesses

  def play_round(deck)
    binding.pry
    deck.each do |question,answer|
      puts question
      guess = gets.chomp
      if guess == answer
        "Hurray"
      else "you suck"
      end
  end
end


end
