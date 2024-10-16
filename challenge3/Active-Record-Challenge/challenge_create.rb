# Name: Jiahui Wu
# WEBD-3008
# Challenge 3

require_relative 'ar.rb'

# Create three new products:

# Method One
new_product = Product.new

new_product.name = "Life Cuisine"
new_product.description = "Life Cuisine premaid pepperoni pizza."
new_product.price = 10
new_product.stock_quantity = 100

new_product.save
puts "Added product 1: #{new_product.inspect}"

# Method Two:
heat_n_eat = Product.new( name: "Heat N Eat",
                          description: "Heat N Eat premaid hamburger.",
                          price: 8,
                          stock_quantity: 50)

heat_n_eat.save
puts "Added product 2: #{heat_n_eat.inspect}"

# Method Three
factor = Product.create( name: "Factor",
                         description: "Factor premaid chicken and broccoli",
                         price: 15,
                         stock_quantity: 25)
puts "Added product 3: #{factor.inspect}"

# Create product that is missing some required columns
healthy_choice = Product.new( name: "Healthy Choice",
                              description: "Heathy Choice premaid salad.")

# Save will return false and show all the missing columns
if (healthy_choice.save)
  puts "Health Choice was saved to the database products table."
  puts healthy_choice.inspect
else
  puts "There was an error saving Health Choice to the database."

  healthy_choice.errors.messages.each do |column, errors|
    errors.each do |error|
      puts "The #{column} property #{error}."
    end
  end
end
