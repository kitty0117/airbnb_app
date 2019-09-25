class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :reserves, dependent: :destroy
end
