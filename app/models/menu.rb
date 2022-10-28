class Menu < ApplicationRecord
  has_many :orders_items

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
