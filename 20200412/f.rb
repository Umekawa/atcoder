def sumodd(line5, line6)
  tmp=0
  sum=0
  while(tmp*2<line5)
    sum+=line6[tmp]
    tmp+=1
  end
  sum
end

def sumeven(line3, line4)
  tmp=0
  sum=0
  while((tmp*2)<line3)
    sum+=line4[tmp+1]
    tmp+=1
  end
  sum
end

line1 = gets.strip.to_i
line2 = gets.strip.split(' ').map do |i|
  i.to_i
end
if(line1%2==0)
  puts [sumodd(line1,line2), sumeven(line1,line2)].max
else
  tmp = 0
  max = nil
  line7=line1-1
  while(tmp<line1)
    line8 = line2.dup
    line8.delete_at(tmp)
    print(line2)
    puts ''
    print(line8)
    puts ''
    print(sumodd(line7,line8))
    print(' ')
    print(max)
    print(' ')
    print(sumeven(line7,line8))
    puts ''
    tmp_max=[sumodd(line7,line8), sumeven(line7,line8)].max
    max = max ? [tmp_max, max].max : tmp_max
    tmp+=1
  end
  puts max
end