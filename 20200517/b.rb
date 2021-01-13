s = gets.strip.to_i
k=gets.strip
k = "#{k[0..s-1]}..." if s<k.length
puts k