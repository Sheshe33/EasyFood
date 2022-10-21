class Menu < ApplicationRecord
  has_many :orders_items
  belongs_to :meal
end
