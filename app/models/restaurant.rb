class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  CATEGORIES = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']
  validates :category, inclusion: { in: Restaurant::CATEGORIES }
end
