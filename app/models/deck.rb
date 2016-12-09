class Deck < ActiveRecord::Base
  # Remember to create a migration!
  validates_presence_of :name

  has_many :flashcards
  has_many :rounds

  def check_answers?(anwser, correct_answer)
    return true if answer == correct_answer
  end


end
