N = gets.strip.to_i
A = gets.strip.split(' ').map(&:to_i).sort
sum = A[-1]
b = 0
(N-2).times do |i|
  sum += A[A.size-(b/2)-2]
  b+=1
end


puts sum