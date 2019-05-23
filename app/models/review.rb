class Review < ApplicationRecord
  belongs_to :booking

  validates :content, presence: true, length: { minimum: 30 }
  validates :stars, presence: true, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4, 5], message: "Must be between 1 and 5"}
end
