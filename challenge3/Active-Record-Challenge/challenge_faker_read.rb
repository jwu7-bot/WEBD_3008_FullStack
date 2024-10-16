# Name: Jiahui Wu
# WEBD-3008
# Challenge 3

require_relative 'ar.rb'

# Find all categories in the database
categories = Category.all

# Display all category names and their products (name and price)
categories.each do |category|
  puts "Category: #{category.name}"

  category.products.each do |product|
    puts "Product name: #{product.name}, Price: $#{'%.2f' % product.price}"
  end

  puts "\n"
end
