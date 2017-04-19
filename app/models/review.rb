class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, numericality: { only_integer: true }
  validates_presence_of :content
  validates_inclusion_of :rating, in: (0..5).to_a, message: "must be between 0 and 5"
end
