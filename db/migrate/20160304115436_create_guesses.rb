class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      # t.integer :attempt, null:false, default: 0
      # t.integer :first_attempt, null:false, default: 0
      t.boolean :correct?, null: false, default: false
      t.references :card, null: false
      t.references :round, null: false
    end
  end
end

