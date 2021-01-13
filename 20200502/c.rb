def hoge
  ar[]

end


nums=gets.strip.split(" ").map do |i|
  i.to_i
end
n=nums[0]
m=nums[1]
q=nums[2]
ar=[]
q.times do |i|
  a = gets.strip.split(" ").map do |j|
    j.to_i
  end
  ar[i]=a
end
max = 0
a=Array.new(n,1)


puts max