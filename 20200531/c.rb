require 'bigdecimal'
require 'bigdecimal/util'
a1,b1 = gets.strip.split(" ")
a = a1.to_i
b = b1.to_d
c = a*b
if a == 0
  puts 0
elsif b ==0
  puts 0
else
  puts (c.to_i)
end
