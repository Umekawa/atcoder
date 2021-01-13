line1 = gets.strip
num=line1.to_i
line2 = gets.strip
r_num=0
rg_num=0
rgb_num=0
line2.chars.each_with_index do |c,i|
  r_num+=1 if c.eql?('R')
  rg_num+=r_num if c.eql?('G')
  if c.eql?('B')
    rgb_num+=rg_num
    tmp = 1
    while(tmp*2 <= i)
      rgb_num-=1 if line2[i-tmp].eql?('G') && line2[i-tmp*2].eql?('R')
      tmp+=1
    end
  end
end
puts rgb_num
