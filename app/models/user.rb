class User < ActiveRecord::Base
  attr_accessor :password_confirmation

  def self.with_username(username)
    where(username: username).first
  end

  def has_password?(given_password)
    given_password == password
  end
end
