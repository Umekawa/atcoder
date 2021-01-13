gets
a = gets.split.map(&:to_i)
max = a.max.dup.to_s(2)
m = a.map do |i|
  s_i = i.to_s(2)
  '0' * (max.length-s_i.length) + s_i
end

w = []
max.size.times.map do |i|
  s = 0
  w[] m.each.map do |s|
    if  s[i] =='1'
      s = (s+1)%2
    end
  end
end