class User < ApplicationRecord
  has_secure_password
  has_many :favourites, dependent: :destroy
  has_many :plans, through: :favourites

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { in: 6..20 }
end
