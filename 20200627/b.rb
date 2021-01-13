s = gets.strip
t = gets.strip

sum=0
s.size.times do |i|
  sum+=1 if s[i] != t[i]
end
puts sum