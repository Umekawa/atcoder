N=gets.strip.to_i
a = Array.new(N,0)
N.times do |i|
  div = (N/(i+1)).to_i
  a[i] = (div)*(div+1)/2 *(i+1)
end

puts a.sum