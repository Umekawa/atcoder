N = gets.strip.to_i
c = gets.strip
s = 0
r_pos = 0
w_pos = N-1

if c.include?('R') && c.include?('W')
  while(r_pos<N && c[r_pos]=='R')
    r_pos+=1
  end
  while(w_pos>0 && c[w_pos]=='W')
    w_pos-=1
  end
  while(true)
    break if r_pos>=w_pos
    s+=1
    c[w_pos] = 'W'
    c[r_pos] = 'R'
    while(r_pos<N && c[r_pos]=='R')
      r_pos+=1
    end
    while(w_pos>0 && c[w_pos]=='W')
      w_pos-=1
    end
  end
end

puts s