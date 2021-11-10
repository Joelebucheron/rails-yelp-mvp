class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant_id, presence: true
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }
# A review must belong to a restaurant.
# A review must have content and a rating.
# A review’s rating must be a number between 0 and 5.
end
