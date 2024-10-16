# Name: Jiahui Wu
# WEBD-3008
# Challenge 3

require_relative 'ar.rb'

# Find one of the products created and delete it from database
to_delete = Product.where(:name => 'Life Cuisine').first

puts to_delete.inspect

to_delete.destroy unless to_delete.nil?

puts to_delete.inspect
