days = gets.strip.split(" ")[0].to_i
homework_days = gets.strip.split(" ").map do |i|
  i.to_i
end.sum
puts days-homework_days>=0 ? days-homework_days : -1
