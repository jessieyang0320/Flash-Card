class Deck < ActiveRecord::Base
  # Remember to create a migration!
  validates_presence_of :name

  has_many :flashcards
  has_many :rounds
end
