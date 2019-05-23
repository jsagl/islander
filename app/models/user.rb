class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :islands

  validates :first_name, presence: true, length: { minimum: 2 }, format: { with: /^[\p{L}\s'.-]+$/,
    message: "Please only use letters" }
  validates :last_name, presence: true, length: { minimum: 2 }, format: { with: /^[\p{L}\s'.-]+$/,
    message: "Please only use letters" }
  validates :birth_date, presence: true
  validates :description, presence: true, length: { minimum: 15 }
end
