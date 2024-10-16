# Name: Jiahui Wu
# WEBD-3008
# Challenge 3

require_relative 'ar.rb'

# Find all products with a stock quantity greater than 40
products = Product.where('stock_quantity > 40')

# Iterate through each product and add one to the their stock quantity
products.each do |product|
  product.stock_quantity += 1
  product.save
  puts "Updated product: #{product.name}, new stock quantity: #{product.stock_quantity}"
end