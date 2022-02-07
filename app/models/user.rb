# frozen_string_literal: true

class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true
  has_secure_password

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.downcase)
    user && user.authenticate(password)
  end
end
