nums=gets.strip.split(" ").map do |i|
  i.to_i
end
a = nums[0]
b = nums[1]
c = nums[2]
k = nums[3]

sum = 0

if k<=a
  sum +=k
elsif k<=a+b
  sum+=a
else
  sum+=a-(k-a-b)
end

puts sum