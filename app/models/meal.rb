class Meal < ApplicationRecord
  has_many :orders_items
  belongs_to :category
  has_one_attached :image_url

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :stock, presence: true
end
