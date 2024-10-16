class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true, numericality: { greatter_than_or_equal_to: 0 }
  validates :stock_quantity, presence: true, numericality: { only_integer: true, greatter_than_or_equal_to: 0 }
end
