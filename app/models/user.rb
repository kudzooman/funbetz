class User < ActiveRecord::Base
  has_many :cards
  has_many :credits
  has_many :picks, through: :game
  has_many :bets, through: :cards
  # attr_accessible :username, :password, :password_confirmation
has_secure_password
  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username
  validates_uniqueness_of :username

  def self.authenticate(username, password)
    user = find_by_username(username)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, passowrd_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password_present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, passowrd_salt)
    end
  end
end
