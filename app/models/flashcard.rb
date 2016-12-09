class Flashcard < ActiveRecord::Base
  # Remember to create a migration!
  validates_presence_of :question,:answer

  has_many :guesses
  belongs_to :deck
end
