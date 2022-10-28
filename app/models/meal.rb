class Meal < ApplicationRecord
  has_many :orders_items

  belongs_to :category


  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :stock, presence: true
end
