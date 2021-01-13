num = gets.strip.to_i
h=[]
num.times do |i|
  s=gets.strip
  h.push(s)
  h=h.uniq
end
puts h.uniq.length
