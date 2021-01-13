line1 = gets.strip
nums=line1.split(' ').map do |i|
  i.to_i
end
max_num = nums[0]
min_num = nums[1]
s = (max_num / min_num).to_i
puts ([(max_num-s*min_num).abs , (max_num-min_num*(s+1)).abs].min)