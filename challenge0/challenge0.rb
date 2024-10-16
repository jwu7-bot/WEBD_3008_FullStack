# Name: JiaHui Wu
# WEBD-3008

print "Type in the sub total: "

# sub_total = 5
sub_total = gets.chop.to_f
PST = 0.07
GST = 0.05
grand_total = sub_total + (sub_total * PST) + (sub_total * GST)

puts "Subtotal: $#{sub_total}"
puts "PST: $#{sub_total * PST} - 7%"
puts "GST: $#{sub_total * GST} - 5%"
puts "Grand Total: $#{grand_total}"

if (grand_total <= 5)
  puts "Pocket Change"
elsif (grand_total < 20)
  puts "Wallet Time"
else
  puts "Charge It!"
end



