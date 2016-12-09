class Guess < ActiveRecord::Base
  # Remember to create a migration!
  validates_presence_of :correct?

  belongs_to :round
  belongs_to :flashcard
end
