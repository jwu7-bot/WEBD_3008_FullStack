Product.delete_all

676.times do
  Product.create(
    title: Faker::Commerce.product_name,
    price: Faker::Commerce.price(range: 0..100.0),
    stock_quantity: Faker::Number.between(from: 1, to: 100)
  )
end

puts "Created #{Product.count} Products."
