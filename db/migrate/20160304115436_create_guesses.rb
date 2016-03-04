class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :attempt, null:false, default: 0
      t.integer :first_attempt, null:false, default: 0
    end
  end
end
