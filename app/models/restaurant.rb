class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORY }

# A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
# When a restaurant is destroyed, all of its reviews must be destroyed as well.

end
