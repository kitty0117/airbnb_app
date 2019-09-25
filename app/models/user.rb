class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :reserves, dependent: :destroy
  validates :name, presence: true, length: {maximum:50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length:{maximum:255},
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: true
end 