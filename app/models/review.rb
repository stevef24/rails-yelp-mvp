class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, allow_blank: false
  validates :rating, presence: true, inclusion: { in: (0..5).to_a }, numericality: { only_integer: true }
end
