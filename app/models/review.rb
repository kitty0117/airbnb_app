class Review < ApplicationRecord
  belongs_to :user, :place
end
