H,W,K = gets.strip.split(" ").map(&:to_i)
map = ''

H.times do |i|
  map+=gets.strip
end

sum = 0
H2 = 2**H
W2 = 2**W
H2.times do |i|
  i2 = i.to_s(2)
  i2 = "#{'0'*(H-i2.size)}#{i2}"
  W2.times do |j|
    j2 = j.to_s(2)
    j2 = "#{'0'*(W-j2.size)}#{j2}"
    new_map = map.dup
    H.times do |k|
      W.times do |l|
        new_map[k*W+l]='R' if i2[k] == '1' || j2[l] == '1'
      end
    end
    sum +=1 if new_map.count('#')==K
  end 
end


puts sum
