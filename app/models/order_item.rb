class OrderItem < ApplicationRecord
  has_many :customers
  belongs_to :order
  belongs_to :meal
  belongs_to :menu
end
