num=gets.strip.to_i
t=100
a=0
while(t<num)
  t=(t*1.01).to_i
  a+=1
end
puts a
