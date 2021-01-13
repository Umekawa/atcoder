nums=gets.strip.split(" ").each do |i|
  i.to_i
end
wolves=nums[1].to_i
sheeps=nums[0].to_i
s = wolves >= sheeps ? "unsafe" : "safe"
puts s
