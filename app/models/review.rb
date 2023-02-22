class Review < ApplicationRecord
  belongs_to :restaurant
  VALID_VALUES = (0..5)

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
