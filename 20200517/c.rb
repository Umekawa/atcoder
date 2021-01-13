a,b,h,m =  gets.chomp.split.map(&:to_i)
kakua = (h*30 + m * 0.5)
kakub = m*6 
pi =Math::PI
kaku = (kakua-kakub) / 180
cosc=Math.cos(kaku * pi )
c = Math.sqrt(a*a+b*b-2*b*a*cosc)
puts c