class OrderItem < ApplicationRecord
  has_many :customers
  belongs_to :order
  belongs_to :meal
  belongs_to :menu

  validates :table_number, presence: true
  validates :price, presence: true
  validates :number_customer, presence: true
end
