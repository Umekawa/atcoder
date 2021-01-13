a,b,c = gets.strip.split(' ').map(&:to_i)
K = gets.strip.to_i
num=0
while(!(a<b&&b<c))
  unless a<b
    b+=b
    num+=1 
  end
  unless b<c
    c+=c
    num+=1 
  end
end

flag = num<=K ? 'Yes' : 'No'
puts flag