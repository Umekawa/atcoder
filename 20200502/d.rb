def floor(a,b,x)
  ((a*x/b).to_i)- ((x/b).to_i * a).to_i
 end
 
 nums=gets.strip.split(" ").map do |i|
   i.to_i
 end
 a=nums[0]
 b=nums[1]
 n=nums[2]
 n_x=1
 max = 0
 x = n<b ? n : b-1
 
 puts floor(a,b,x)