class Guess < ActiveRecord::Base
  # Remember to create a migration!
  attr_reader :correct_answers
  validates_presence_of :correct?

  belongs_to :round
  belongs_to :flashcard


  def self.count
    @correct_answers = 0
    self.each do |guess|
      if guess.correct?
        correct_answers += 1
      else
      end
    end
    return @correct_answers
  end
end


