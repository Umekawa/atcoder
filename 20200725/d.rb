N = gets.strip.to_i
A = gets.strip.split(' ').map(&:to_i)

money = 1000
stock = 0
(N-1).times do |i|
  if (A[i]<A[i+1])
    new_stock = (money/A[i]).to_i
    money -= new_stock*A[i]
    stock+=new_stock
  else
    money += stock*A[i]
    stock = 0
  end
end
money += stock*A[-1]
puts money