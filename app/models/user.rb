class User < ActiveRecord::Base
  attr_accessor :password_confirmation

  scope :with_username, lambda { |username|
    where(username: username).first
  }

  def has_password?(given_password)
    given_password == password
  end
end
