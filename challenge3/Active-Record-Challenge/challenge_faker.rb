# Name: Jiahui Wu
# WEBD-3008
# Challenge 3

require_relative 'ar.rb'

# loop to generate 10 new categories
10.times do
  category = Category.create(name: Faker::Commerce.department)

  # loop to generate 10 products of each category
  10.times do
    product = category.products.create(
      name:             Faker::Commerce.product_name,
      description:      Faker::Lorem.sentence,
      price:            Faker::Commerce.price,
      stock_quantity:   Faker::Number.between(from: 1, to: 100)
    )
    puts "Created product #{product.name} in category #{category.name}"
  end
end