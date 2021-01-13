K = gets.strip.to_i

f = 0
c = 0
while (true)
  f = (f*10+7) % K
  c +=1
  break if f==0
  if c == K
    c = -1
    break
  end
end

puts c