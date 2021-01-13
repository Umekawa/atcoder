N,D = gets.strip.split(' ').map(&:to_i)
d2 = D*D
c = 0
N.times do
 x,y = gets.strip.split(' ').map(&:to_i)
 c+=1 if x*x+y*y <=d2
end

puts c