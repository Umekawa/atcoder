N,K = gets.strip.split(' ').map(&:to_i)
P = gets.strip.split(' ').map(&:to_i)
C= gets.strip.split(' ').map(&:to_i)
a = []

N.times do |i|
  t = []
  current = i
  loop_score = 0
  loop_scores = []
  while (true)
    current = P[current]-1
    t.push(current)
    break if t.uniq.size != t.size
    loop_score+=C[current]
    loop_scores.push(loop_score)
  end
  a[i] = [t[0..-2],loop_scores,loop_score]
end
scores=[]
N.times do |i|
  score = 0
  if K < a[i][0].size
    scores.push(a[i][1][0..K-1].max)
  else
    if a[i][2] <= 0
      scores.push(a[i][1].max)
    else
      s=(K/a[i][1].size).to_i
      d= (K%a[i][1].size).to_i
      d.times do |l|
        a[i][1][l]+=a[i][2]
      end
      scores.push(a[i][1].max)
    end
  end
end
print scores.max