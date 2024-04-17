class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :password, presence: {on: create}, length: {minimum: 8, maximum: 128}

  CONFIRMATION_TOKEN_EXP = 24.hours

  def generate_confirmation_token
    signed_id expires_in: CONFIRMATION_TOKEN_EXP, purpose: :confirm_email
  end
end
