# Name: Jiahui Wu
# WEBD-3008
# Challenge 3

require_relative 'ar.rb'

number_of_products = Product.count

puts "There are #{number_of_products} in the products table."


# Use product class to retrive the first product
first_product = Product.first

# Inspect first product retrieved
puts "Inspect the first product: #{first_product.inspect}"

# The Products table has association with the Category table.
# (belongs_to :category) in the product.rb file

# Total number of products
number_of_products = Product.count
puts "There are #{number_of_products} in my products table"

# The names of all products above $10 with names that begin with the letter C
products_above_10_with_c = Product.where('price > 10 AND name LIKE "C%"').pluck(:name)
puts "Products above $10 with names that start with C: #{products_above_10_with_c}"

# Total number of products with low stock (less than 5 in stock)
low_stock_products = Product.where('stock_quantity < 5').count
puts "Total number of products with low stock: #{low_stock_products}"

# Find the category associated with one of the products
category_name = first_product.category.name
puts "The category of #{first_product.name} is #{category_name}"

# Find a specific category and use to build and persist a new product associated with this category
beverage_category = Category.where(:name => 'Beverages').first

new_beverage = beverage_category.products.build(name: "Fanta",
                                                description: "Fanta beverage",
                                                price: 2,
                                                stock_quantity: 50)

new_beverage.save

puts "Beverage: #{new_beverage.name}, Category: #{new_beverage.category.name}"

# Find a specific category and use to locate all the associated products over a certain price
expensive_beverages = beverage_category.products.where('price > 10')

expensive_beverages.each do |product|
  puts "Product #{product.name} in category #{product.category.name} costs $#{product.price}"
end


