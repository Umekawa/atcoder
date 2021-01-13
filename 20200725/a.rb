s = gets.strip.to_i

num = if s<600
  8
elsif s<800
  7
elsif s<1000
  6
elsif s<1200
  5
elsif s<1400
  4
elsif s<1600
  3
elsif s<1800
  2
elsif s<2000
  1
end
puts num