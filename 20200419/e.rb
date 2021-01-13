num = gets.strip.to_i
nums = gets.strip.split.map do |i|
  i.to_i
end
a = Array.new(num) { Array.new(num,0) }
ans = Array.new(num,0)
num.times do |i|
  num.times do |j|
    a[i][j] = nums[i]*((i-j).abs)
  end
end
num.times do |i|
  max = a.flatten.max
  break if max == 0
  num.times do |j|
    max_num=a[j].index(max)
    if max_num && ans[max_num] == 0
      ans[max_num] = max
      num.times do |k|
        a[k][max_num]=0
        a[j][k] =0
      end
      break
    end
  end
end
puts ans.sum
