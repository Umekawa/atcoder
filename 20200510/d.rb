nums=gets.strip.split(" ").map do |i|
  i.to_i
end
n=nums[0]
k=nums[1]
s=nums=gets.strip.split(" ").map do |i|
  i.to_i
end
now=1
tele_num=0
a = Array.new(n,nil)
a[0] = 0
flag=false
#puts "tele_num #{tele_num} now #{now}"
while tele_num < k
  next_pos = s[now-1]
  tele_num+=1
  #puts "tele_num #{tele_num} next_pos #{next_pos}"
  if a[next_pos].nil? || flag
    a[next_pos] = tele_num
  else
    #puts "tele_numff #{tele_num}"
    #puts "next_pos #{a[next_pos]}"
    loop_num = tele_num - a[next_pos]
    #puts "loop_num #{loop_num}"
    t=((k - tele_num) / loop_num).to_i 

    tele_num += (t*loop_num)
    flag=true
  end
  now = next_pos
end
puts now