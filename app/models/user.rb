class User < ActiveRecord::Base

  include BCrypt
  # Remember to create a migration!
  validates_presence_of :username,:password
  validates_uniqueness_of :username

  has_many :rounds

  def authenticate(password)
    self.password == password
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
