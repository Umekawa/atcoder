n = gets.strip[-1].to_i
s= if [2,4,5,7,9].include?(n)
      'hon'
    elsif [0,1,6,8].include?(n)
      'pon'
    else
      'bon'
    end
puts 