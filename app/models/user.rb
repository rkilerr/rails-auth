class User < ApplicationRecord
  has_secure_password
  validates :email,
    presence: true,
    uniqueness: { case_sensitive: false },
    format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Invalid email" }
  validates :name, presence: true
end
