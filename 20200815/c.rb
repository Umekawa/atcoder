nums = gets.strip.split(' ').map(&:to_i)

current = nums[0].abs
t=(current.abs/(nums[2])).to_i
if nums[1]<t
  puts (current.abs - (nums[1]*nums[2])).abs
else
  current = current.abs - nums[2]*t
  nums[1]-=t
  puts nums[1]%2==0 ? current : (current.abs-nums[2]).abs
end