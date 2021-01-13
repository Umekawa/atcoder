num = gets.strip.to_i
nums = gets.strip.split(" ").map do |i|
  i.to_i
end

a=[]
b=[]
nums.length.times{|i|
  a.push(-(nums[i]-i-1))
  b.push(nums[i]+i+1)
}
aa= {}
bb = {}
a.each do |i|
  aa[i] = aa[i].nil? ? 1 : aa[i]+=1
end

b.each do |i|
  bb[i] = bb[i].nil? ? 1 : bb[i]+=1
end


sum=0
aa.each do |e,i|
  unless bb[e].nil?
    sum+=bb[e]*i
  end
end


puts sum