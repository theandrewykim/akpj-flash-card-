class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean :correct?, null: false, default: false
      t.references :card, null: false
      t.references :round, null: false
    end
  end
end

