class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Enter valid Email Address" }
  validates_uniqueness_of :email
end
