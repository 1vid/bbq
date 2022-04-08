class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  EMAIL_VALIDATION_REGEX = URI::MailTo::EMAIL_REGEXP

  has_many :events

  validates :name, presence: true, length: { maximum: 35 }
  validates :email, presence: true, length: {maximum: 255}
  validates :email, uniqueness: true
  validates :email, format: { with: EMAIL_VALIDATION_REGEX }
end
