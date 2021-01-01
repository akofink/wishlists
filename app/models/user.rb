class User < ActiveRecord::Base
  has_secure_password

  has_many :family_memberships
  has_many :families, through: :family_memberships
  has_many :dashboards, foreign_key: :owner_id
  has_many :wish_lists
  has_many :wish_items, through: :wish_lists

  validates :username, presence: true
  validates :first_name, presence: true

  validates :email,
    presence: true,
    uniqueness: true,
    format: {
      with: /.+@.+\..+/,
      message: 'must be the correct format'
    }

  validates :password, unless: -> { password.blank? },
    length: {
    minimum: 6
  },
    format: {
    with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*(_|[^\w]|\d)).+\z/,
    message: 'must contain one uppercase letter, one lowercase letter, and a symbol or number'
  }

  def self.with_username(username)
    where(username: username).first
  end

  def has_password?(given_password)
    authenticate given_password
  end
end
