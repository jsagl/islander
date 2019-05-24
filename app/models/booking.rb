class Booking < ApplicationRecord
  belongs_to :island
  belongs_to :user
  has_one :review

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, numericality: { only_integer: true, greater_than: 0 }
end
