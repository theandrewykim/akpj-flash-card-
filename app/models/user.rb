# require 'bcrypt'

class User < ActiveRecord::Base
  has_many :rounds
  validates_presence_of :username, :password, :message => 'Invalid Username or Password'
  validates_uniqueness_of :username, :message => "Username is already taken"

include BCrypt

  def password
    @password ||= Password.new(self.password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
