nums=gets.strip.split(" ").map do |i|
  i.to_i
end
n=nums[0]
k=nums[1]
a=Array.new(n,0)
k.times do |i|
  d = gets.strip.to_i
  nums=gets.strip.split(" ").map do |j|
    j.to_i
  end
  d.times do |l|
    a[nums[l]-1]+=1
  end
end

sum=0

a.each do |i|
  sum+=1 if i==0
end
puts sum