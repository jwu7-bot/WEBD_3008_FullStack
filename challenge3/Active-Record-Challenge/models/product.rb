class Product < ActiveRecord::Base
  # This AR object is linked with the products table.

  # Columns in the Products table:
  # id, name, description, price, stock_quantity, category_id, created_at, updated_at

  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  belongs_to :category

  # Validate that all products must have all columns
  validates :name, :description, :price, :stock_quantity, presence: true

  # Validate the product name is unique and loger than 3 chars
  validates :name, uniqueness: true, length: { minimum: 4 }
end