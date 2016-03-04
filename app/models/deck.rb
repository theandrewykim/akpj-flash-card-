class Deck < ActiveRecord::Base
  has_many :cards, :rounds
  has_many :rounds
  has_many :users, through: :rounds
end
