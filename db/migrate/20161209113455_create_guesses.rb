class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean :correct?,null:false
      t.belongs_to :flashcard
      t.belongs_to :round

      t.timestamps

    end
  end
end
