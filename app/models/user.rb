class User < ActiveRecord::Base
  # Remember to create a migration!
  validates_presence_of :username,:password_hash
  validates_uniqueness_of :username

  has_many :rounds
end
