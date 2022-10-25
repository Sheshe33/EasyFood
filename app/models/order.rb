class Order < ApplicationRecord
  has_many :orders_items
  belongs_to :user

end
