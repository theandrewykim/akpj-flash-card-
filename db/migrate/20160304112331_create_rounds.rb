class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :user, null: false
      t.references :deck, null: false
      t.integer :attempts, null: false, default: 0
      t.integer :first_attempts, null: false, default: 0

      t.timestamps null: false
    end
  end
end
