N,M =  gets.chomp.split.map(&:to_i)
arr = Array.new(N, nil)
N.times do |i|
  arr[i] = []
end
M.times do |i|
  a,b = gets.chomp.split.map(&:to_i)
  arr[a-1].push(b-1)
  arr[b-1].push(a-1)
end

before_state = Array.new(N-1,nil)
after_state = Array.new(N-1,nil)
new_ret =  [0]
ret = new_ret
(N-1).times do |i|
  if arr[i+1].include?(0)
    after_state[i] = 0
    new_ret.push(i+1)
  end
end

while after_state.include?(nil) && !(after_state - before_state).empty?
  ret = new_ret.dup
  before_state = after_state.dup
  after_state.length.times do |i|
    next unless after_state[i].nil?
    next if (arr[i+1] & ret).length==0
    after_state[i]=(arr[i+1] & ret)[0]
    new_ret.push(i+1)
  end
end

ret = new_ret
# output
if after_state.include?(nil)
  puts 'No' 
else
  puts 'Yes'
  after_state.each do |s|
    puts s+1
  end
end