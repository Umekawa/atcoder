n = gets.strip.to_i
s = ''
while(!n.eql?(0))
  n-=1
  s = ((n%26)+97).chr + s
  n = (n/26).to_i
end
puts s