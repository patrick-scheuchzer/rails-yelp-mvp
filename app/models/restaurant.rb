class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates_presence_of :name, :address
  validates_inclusion_of :category, in: CATEGORIES, message: "%{value} is not a valid category"
end
