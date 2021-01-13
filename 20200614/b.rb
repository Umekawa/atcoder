x,y = gets.strip.split(" ").map do |i|
  i.to_i
end

if y>4*x || y<2*x
  print 'No'
elsif y.odd?
  print 'No'
else
  print 'Yes'
end