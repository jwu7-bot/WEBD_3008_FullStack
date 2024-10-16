require "csv"

Product.destroy_all
Category.destroy_all

csv_file = Rails.root.join('db/products.csv')
csv_data = File.read(csv_file)

products = CSV.parse(csv_data, headers: true)

# If CSV was created by Excel in Windows you may also need to set an encoding type:
# products = CSV.parse(csv_data, headers: true, encoding: 'iso-8859-1')

products.each do |product|
  # Create categories and products here.
  category_name = product["category"]
  title = product["name"]
  description = product["description"]
  price = product["price"]
  stock_quantity = product["stock quantity"]

  category = Category.find_or_create_by(name: category_name)

  Product.create!(
    title: title,
    description: description,
    price: price,
    stock_quantity: stock_quantity,
    category: category
  )
end

puts "Created #{Product.count} Products"
