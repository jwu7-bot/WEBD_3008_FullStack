class Product < ApplicationRecord
  belongs_to :categoty

  validates :title, presence: true
  validates :price, presence: true
  validates :stock_quantity, presence: true
end
