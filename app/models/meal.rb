class Meal < ApplicationRecord
  has_many :orders_items
  belongs_to :category
end
