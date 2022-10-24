class Meal < ApplicationRecord
  has_many :orders_items
  has_one_attached :image_url
  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :stock, presence: true
end
