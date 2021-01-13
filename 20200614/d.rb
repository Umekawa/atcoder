require 'prime'

class Integer
  def my_divisor_list2
    return [1] if self == 1
    Prime.prime_division(self).map do |e|
      Array.new(e[1]+1).map.with_index do |element, i|
        e[0]**i
      end
    end.inject{|p,q| p.product(q)}.map do |a|
      [a].flatten.inject(&:*)
    end.sort
  end
end

n = gets.strip.to_i
a = gets.strip.split(" ").map do |i|
  i.to_i
end.sort

a_num={}

a_uniq = a.uniq

a.each do |v|
  a_num[v] = a_num[v].nil? ? 1 : a_num[v]+=1
end

values=[]

value_f = {}

a_num.each do |k,v|
  values.push(k)  if v==1 && a_uniq.include?(k)
end

values.each do |v|
  value_f[v] = true
end

sum = n
sum=0
values.each do |v|
  f = true
  v.my_divisor_list2.each do |pp|
    
  end
  sum +=1 if f
end

print values.count