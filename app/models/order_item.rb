class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :meal
  belongs_to :menu
end
