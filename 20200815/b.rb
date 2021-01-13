N = gets.strip.to_i
nums = gets.strip.split(' ').map(&:to_i)

three=[]
N.times do |i|
  N.times do |j|
    N.times do |k|
      three.push([nums[i],nums[j],nums[k]].sort) if i<j && j<k && nums[i] != nums[j] && nums[j]!=nums[k] && nums[k] != nums[i]
    end
  end
end


count = 0
three.each do |t|
  count+=1 if t[0]+t[1]>t[2]
end

puts count