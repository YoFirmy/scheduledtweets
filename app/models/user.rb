class User < ApplicationRecord
  has_many :twitter_accounts

  has_secure_password 
  
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :password, presence: true, format: { with: /\A\S{5,}\z/ }
end
