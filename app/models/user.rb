class User < ApplicationRecord
  has_secure_password 
  
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :password, presence: true, format: { with: /\A\s{5,}\z/ }
end
